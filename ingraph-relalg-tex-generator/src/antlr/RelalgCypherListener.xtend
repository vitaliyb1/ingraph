package antlr

import com.google.common.collect.HashMultimap
import com.google.common.collect.Multimap
import cypher.grammar.CypherBaseListener
import cypher.grammar.CypherParser.MatchContext
import cypher.grammar.CypherParser.NodeLabelContext
import cypher.grammar.CypherParser.RelationshipPatternContext
import cypher.grammar.CypherParser.ReturnContext
import cypher.grammar.CypherParser.SymbolicNameContext
import cypher.grammar.CypherParser.VariableContext
import java.util.HashMap
import java.util.Map
import relalg.Attribute
import relalg.InputRelation
import relalg.RelalgFactory

class RelalgCypherListener extends CypherBaseListener {

	extension RelalgFactory factory = RelalgFactory.eINSTANCE

	public Map<String, InputRelation> relations = new HashMap
	public Map<String, Attribute> attributes = new HashMap
	public Multimap<Attribute, String> nodeLabels = HashMultimap.create()
	public Map<InputRelation, Attribute> relationSource = new HashMap
	public Map<InputRelation, Attribute> relationTarget = new HashMap

	MainState mainState
	ParserState parserState
	String currentVariable
	String currentRelationship

	override enterSymbolicName(SymbolicNameContext ctx) {
		val name = ctx.getText

		// println(ctx.getParent.getParent.getParent.getText)
		if (mainState == MainState::MATCH) {
			switch (parserState) {
				case RELATIONSHIP: {
					getRelation(name)
					println(name + "'s source " + currentVariable)
					relationSource.put(getRelation(name), getAttribute(currentVariable))
					currentRelationship = name
				}
				case VARIABLE: {
					getAttribute(name)
					println(currentRelationship + "'s target " + name)

					if (currentRelationship != null) {
						relationTarget.put(getRelation(currentRelationship), getAttribute(name))
					}
					currentVariable = name
				}
				case NODELABEL: {
					val label = ctx.getText
					nodeLabels.put(getAttribute(currentVariable), label)
				}
				default: {
				}
			}
			parserState = ParserState::NONE
		}
	}

	override enterMatch(MatchContext ctx) {
		mainState = MainState::MATCH
	}

	override enterReturn(ReturnContext ctx) {
		mainState = MainState::RETURN
	}

	override enterRelationshipPattern(RelationshipPatternContext ctx) {
		parserState = ParserState::RELATIONSHIP
	}

	override enterVariable(VariableContext ctx) {
		parserState = ParserState::VARIABLE
	}

	override enterNodeLabel(NodeLabelContext ctx) {
		parserState = ParserState::NODELABEL
	}

	def getRelation(String typeName) {
		if (!relations.containsKey(typeName)) {
			val r = createInputRelation => [name = typeName; type = typeName]
			relations.put(typeName, r)
		}
		relations.get(typeName)
	}

	def getAttribute(String attributeName) {
		if (!attributes.containsKey(attributeName)) {
			val a = createAttribute => [name = attributeName]
			attributes.put(attributeName, a)
		}
		return attributes.get(attributeName)
	}

}