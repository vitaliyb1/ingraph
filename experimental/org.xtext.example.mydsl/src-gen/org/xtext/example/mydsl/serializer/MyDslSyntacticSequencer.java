/*
 * generated by Xtext 2.10.0
 */
package org.xtext.example.mydsl.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AlternativeAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.GroupAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

@SuppressWarnings("all")
public class MyDslSyntacticSequencer extends AbstractSyntacticSequencer {

	protected MyDslGrammarAccess grammarAccess;
	protected AbstractElementAlias match_RelationshipPattern_DashParserRuleCall_2_0_or_DashParserRuleCall_3_0_or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1__;
	protected AbstractElementAlias match_RelationshipPattern___DashParserRuleCall_2_0_DashParserRuleCall_2_2_RightArrowHeadParserRuleCall_2_3___or___DashParserRuleCall_3_0_DashParserRuleCall_3_2___or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1_DashParserRuleCall_0_3_RightArrowHeadParserRuleCall_0_4___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1_DashParserRuleCall_1_3__;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (MyDslGrammarAccess) access;
		match_RelationshipPattern_DashParserRuleCall_2_0_or_DashParserRuleCall_3_0_or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_0_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_1())), new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_1_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_1())), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_0()));
		match_RelationshipPattern___DashParserRuleCall_2_0_DashParserRuleCall_2_2_RightArrowHeadParserRuleCall_2_3___or___DashParserRuleCall_3_0_DashParserRuleCall_3_2___or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1_DashParserRuleCall_0_3_RightArrowHeadParserRuleCall_0_4___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1_DashParserRuleCall_1_3__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_2()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_2_3())), new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_2())), new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_0_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_1()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_3()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_0_4())), new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_1_0()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_1()), new TokenAlias(false, false, grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_3())));
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (ruleCall.getRule() == grammarAccess.getDashRule())
			return getdashToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getLeftArrowHeadRule())
			return getleftArrowHeadToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getRightArrowHeadRule())
			return getrightArrowHeadToken(semanticObject, ruleCall, node);
		return "";
	}
	
	/**
	 * dash:
	 * 	'-' | '­' | '‐' | '‑' | '‒' | '–' | '—' | '―' | '−' | '﹘' | '﹣' | '－';
	 */
	protected String getdashToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "-";
	}
	
	/**
	 * leftArrowHead:
	 * 	'<' | '⟨' | '〈' | '﹤' | '＜';
	 */
	protected String getleftArrowHeadToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "<";
	}
	
	/**
	 * rightArrowHead:
	 * 	'>' | '⟩' | '〉' | '﹥' | '＞';
	 */
	protected String getrightArrowHeadToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return ">";
	}
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_RelationshipPattern_DashParserRuleCall_2_0_or_DashParserRuleCall_3_0_or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1__.equals(syntax))
				emit_RelationshipPattern_DashParserRuleCall_2_0_or_DashParserRuleCall_3_0_or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1__(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_RelationshipPattern___DashParserRuleCall_2_0_DashParserRuleCall_2_2_RightArrowHeadParserRuleCall_2_3___or___DashParserRuleCall_3_0_DashParserRuleCall_3_2___or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1_DashParserRuleCall_0_3_RightArrowHeadParserRuleCall_0_4___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1_DashParserRuleCall_1_3__.equals(syntax))
				emit_RelationshipPattern___DashParserRuleCall_2_0_DashParserRuleCall_2_2_RightArrowHeadParserRuleCall_2_3___or___DashParserRuleCall_3_0_DashParserRuleCall_3_2___or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1_DashParserRuleCall_0_3_RightArrowHeadParserRuleCall_0_4___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1_DashParserRuleCall_1_3__(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * Ambiguous syntax:
	 *     (leftArrowHead dash) | (leftArrowHead dash) | dash | dash
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) '[' ':' ']' dash (rule start)
	 *     (rule start) (ambiguity) '[' ':' label=Label
	 *     (rule start) (ambiguity) '[' variable=Variable
	 */
	protected void emit_RelationshipPattern_DashParserRuleCall_2_0_or_DashParserRuleCall_3_0_or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     (dash dash) | (leftArrowHead dash dash) | (dash dash rightArrowHead) | (leftArrowHead dash dash rightArrowHead)
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) (rule start)
	 */
	protected void emit_RelationshipPattern___DashParserRuleCall_2_0_DashParserRuleCall_2_2_RightArrowHeadParserRuleCall_2_3___or___DashParserRuleCall_3_0_DashParserRuleCall_3_2___or___LeftArrowHeadParserRuleCall_0_0_DashParserRuleCall_0_1_DashParserRuleCall_0_3_RightArrowHeadParserRuleCall_0_4___or___LeftArrowHeadParserRuleCall_1_0_DashParserRuleCall_1_1_DashParserRuleCall_1_3__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
