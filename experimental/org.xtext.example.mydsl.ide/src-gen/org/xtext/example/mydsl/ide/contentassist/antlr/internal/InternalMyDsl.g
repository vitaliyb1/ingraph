/*
 * generated by Xtext 2.10.0
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}
@parser::members {
	private MyDslGrammarAccess grammarAccess;

	public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleCypherQuery
entryRuleCypherQuery
:
{ before(grammarAccess.getCypherQueryRule()); }
	 ruleCypherQuery
{ after(grammarAccess.getCypherQueryRule()); } 
	 EOF 
;

// Rule CypherQuery
ruleCypherQuery 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		(
			{ before(grammarAccess.getCypherQueryAccess().getQueriesAssignment()); }
			(rule__CypherQuery__QueriesAssignment)
			{ after(grammarAccess.getCypherQueryAccess().getQueriesAssignment()); }
		)
		(
			{ before(grammarAccess.getCypherQueryAccess().getQueriesAssignment()); }
			(rule__CypherQuery__QueriesAssignment)*
			{ after(grammarAccess.getCypherQueryAccess().getQueriesAssignment()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQuery
entryRuleQuery
:
{ before(grammarAccess.getQueryRule()); }
	 ruleQuery
{ after(grammarAccess.getQueryRule()); } 
	 EOF 
;

// Rule Query
ruleQuery 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQueryAccess().getGroup()); }
		(rule__Query__Group__0)
		{ after(grammarAccess.getQueryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePattern
entryRulePattern
:
{ before(grammarAccess.getPatternRule()); }
	 rulePattern
{ after(grammarAccess.getPatternRule()); } 
	 EOF 
;

// Rule Pattern
rulePattern 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		(
			{ before(grammarAccess.getPatternAccess().getPartsAssignment()); }
			(rule__Pattern__PartsAssignment)
			{ after(grammarAccess.getPatternAccess().getPartsAssignment()); }
		)
		(
			{ before(grammarAccess.getPatternAccess().getPartsAssignment()); }
			(rule__Pattern__PartsAssignment)*
			{ after(grammarAccess.getPatternAccess().getPartsAssignment()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePatternPart
entryRulePatternPart
:
{ before(grammarAccess.getPatternPartRule()); }
	 rulePatternPart
{ after(grammarAccess.getPatternPartRule()); } 
	 EOF 
;

// Rule PatternPart
rulePatternPart 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPatternPartAccess().getGroup()); }
		(rule__PatternPart__Group__0)
		{ after(grammarAccess.getPatternPartAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNodePattern
entryRuleNodePattern
:
{ before(grammarAccess.getNodePatternRule()); }
	 ruleNodePattern
{ after(grammarAccess.getNodePatternRule()); } 
	 EOF 
;

// Rule NodePattern
ruleNodePattern 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNodePatternAccess().getGroup()); }
		(rule__NodePattern__Group__0)
		{ after(grammarAccess.getNodePatternAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePatternElementChain
entryRulePatternElementChain
:
{ before(grammarAccess.getPatternElementChainRule()); }
	 rulePatternElementChain
{ after(grammarAccess.getPatternElementChainRule()); } 
	 EOF 
;

// Rule PatternElementChain
rulePatternElementChain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPatternElementChainAccess().getGroup()); }
		(rule__PatternElementChain__Group__0)
		{ after(grammarAccess.getPatternElementChainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationshipPattern
entryRuleRelationshipPattern
:
{ before(grammarAccess.getRelationshipPatternRule()); }
	 ruleRelationshipPattern
{ after(grammarAccess.getRelationshipPatternRule()); } 
	 EOF 
;

// Rule RelationshipPattern
ruleRelationshipPattern 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationshipPatternAccess().getAlternatives()); }
		(rule__RelationshipPattern__Alternatives)
		{ after(grammarAccess.getRelationshipPatternAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationshipDetail
entryRuleRelationshipDetail
:
{ before(grammarAccess.getRelationshipDetailRule()); }
	 ruleRelationshipDetail
{ after(grammarAccess.getRelationshipDetailRule()); } 
	 EOF 
;

// Rule RelationshipDetail
ruleRelationshipDetail 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationshipDetailAccess().getGroup()); }
		(rule__RelationshipDetail__Group__0)
		{ after(grammarAccess.getRelationshipDetailAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVariable
entryRuleVariable
:
{ before(grammarAccess.getVariableRule()); }
	 ruleVariable
{ after(grammarAccess.getVariableRule()); } 
	 EOF 
;

// Rule Variable
ruleVariable 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableAccess().getNameAssignment()); }
		(rule__Variable__NameAssignment)
		{ after(grammarAccess.getVariableAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLabel
entryRuleLabel
:
{ before(grammarAccess.getLabelRule()); }
	 ruleLabel
{ after(grammarAccess.getLabelRule()); } 
	 EOF 
;

// Rule Label
ruleLabel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLabelAccess().getNameAssignment()); }
		(rule__Label__NameAssignment)
		{ after(grammarAccess.getLabelAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleleftArrowHead
entryRuleleftArrowHead
:
{ before(grammarAccess.getLeftArrowHeadRule()); }
	 ruleleftArrowHead
{ after(grammarAccess.getLeftArrowHeadRule()); } 
	 EOF 
;

// Rule leftArrowHead
ruleleftArrowHead 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getAlternatives()); }
		(rule__LeftArrowHead__Alternatives)
		{ after(grammarAccess.getLeftArrowHeadAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulerightArrowHead
entryRulerightArrowHead
:
{ before(grammarAccess.getRightArrowHeadRule()); }
	 rulerightArrowHead
{ after(grammarAccess.getRightArrowHeadRule()); } 
	 EOF 
;

// Rule rightArrowHead
rulerightArrowHead 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getAlternatives()); }
		(rule__RightArrowHead__Alternatives)
		{ after(grammarAccess.getRightArrowHeadAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuledash
entryRuledash
:
{ before(grammarAccess.getDashRule()); }
	 ruledash
{ after(grammarAccess.getDashRule()); } 
	 EOF 
;

// Rule dash
ruledash 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDashAccess().getAlternatives()); }
		(rule__Dash__Alternatives)
		{ after(grammarAccess.getDashAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationshipPatternAccess().getGroup_0()); }
		(rule__RelationshipPattern__Group_0__0)
		{ after(grammarAccess.getRelationshipPatternAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationshipPatternAccess().getGroup_1()); }
		(rule__RelationshipPattern__Group_1__0)
		{ after(grammarAccess.getRelationshipPatternAccess().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getRelationshipPatternAccess().getGroup_2()); }
		(rule__RelationshipPattern__Group_2__0)
		{ after(grammarAccess.getRelationshipPatternAccess().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getRelationshipPatternAccess().getGroup_3()); }
		(rule__RelationshipPattern__Group_3__0)
		{ after(grammarAccess.getRelationshipPatternAccess().getGroup_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LeftArrowHead__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getLessThanSignKeyword_0()); }
		'<'
		{ after(grammarAccess.getLeftArrowHeadAccess().getLessThanSignKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getMathematicalLeftAngleBracketKeyword_1()); }
		'\u27E8'
		{ after(grammarAccess.getLeftArrowHeadAccess().getMathematicalLeftAngleBracketKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getLeftAngleBracketKeyword_2()); }
		'\u3008'
		{ after(grammarAccess.getLeftArrowHeadAccess().getLeftAngleBracketKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getSmallLessThanSignKeyword_3()); }
		'\uFE64'
		{ after(grammarAccess.getLeftArrowHeadAccess().getSmallLessThanSignKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getLeftArrowHeadAccess().getFullwidthLessThanSignKeyword_4()); }
		'\uFF1C'
		{ after(grammarAccess.getLeftArrowHeadAccess().getFullwidthLessThanSignKeyword_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RightArrowHead__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getGreaterThanSignKeyword_0()); }
		'>'
		{ after(grammarAccess.getRightArrowHeadAccess().getGreaterThanSignKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getMathematicalRightAngleBracketKeyword_1()); }
		'\u27E9'
		{ after(grammarAccess.getRightArrowHeadAccess().getMathematicalRightAngleBracketKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getRightAngleBracketKeyword_2()); }
		'\u3009'
		{ after(grammarAccess.getRightArrowHeadAccess().getRightAngleBracketKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getSmallGreaterThanSignKeyword_3()); }
		'\uFE65'
		{ after(grammarAccess.getRightArrowHeadAccess().getSmallGreaterThanSignKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getRightArrowHeadAccess().getFullwidthGreaterThanSignKeyword_4()); }
		'\uFF1E'
		{ after(grammarAccess.getRightArrowHeadAccess().getFullwidthGreaterThanSignKeyword_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dash__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDashAccess().getHyphenMinusKeyword_0()); }
		'-'
		{ after(grammarAccess.getDashAccess().getHyphenMinusKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getSoftHyphenKeyword_1()); }
		'\u00AD'
		{ after(grammarAccess.getDashAccess().getSoftHyphenKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getHyphenKeyword_2()); }
		'\u2010'
		{ after(grammarAccess.getDashAccess().getHyphenKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getNonBreakingHyphenKeyword_3()); }
		'\u2011'
		{ after(grammarAccess.getDashAccess().getNonBreakingHyphenKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getFigureDashKeyword_4()); }
		'\u2012'
		{ after(grammarAccess.getDashAccess().getFigureDashKeyword_4()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getEnDashKeyword_5()); }
		'\u2013'
		{ after(grammarAccess.getDashAccess().getEnDashKeyword_5()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getEmDashKeyword_6()); }
		'\u2014'
		{ after(grammarAccess.getDashAccess().getEmDashKeyword_6()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getHorizontalBarKeyword_7()); }
		'\u2015'
		{ after(grammarAccess.getDashAccess().getHorizontalBarKeyword_7()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getMinusSignKeyword_8()); }
		'\u2212'
		{ after(grammarAccess.getDashAccess().getMinusSignKeyword_8()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getSmallEmDashKeyword_9()); }
		'\uFE58'
		{ after(grammarAccess.getDashAccess().getSmallEmDashKeyword_9()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getSmallHyphenMinusKeyword_10()); }
		'\uFE63'
		{ after(grammarAccess.getDashAccess().getSmallHyphenMinusKeyword_10()); }
	)
	|
	(
		{ before(grammarAccess.getDashAccess().getFullwidthHyphenMinusKeyword_11()); }
		'\uFF0D'
		{ after(grammarAccess.getDashAccess().getFullwidthHyphenMinusKeyword_11()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Query__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Query__Group__0__Impl
	rule__Query__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Query__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQueryAccess().getCREATEKeyword_0()); }
	'CREATE'
	{ after(grammarAccess.getQueryAccess().getCREATEKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Query__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Query__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Query__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQueryAccess().getPatternAssignment_1()); }
	(rule__Query__PatternAssignment_1)
	{ after(grammarAccess.getQueryAccess().getPatternAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PatternPart__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PatternPart__Group__0__Impl
	rule__PatternPart__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternPart__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPatternPartAccess().getNodeAssignment_0()); }
	(rule__PatternPart__NodeAssignment_0)
	{ after(grammarAccess.getPatternPartAccess().getNodeAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternPart__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PatternPart__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternPart__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getPatternPartAccess().getChainAssignment_1()); }
		(rule__PatternPart__ChainAssignment_1)
		{ after(grammarAccess.getPatternPartAccess().getChainAssignment_1()); }
	)
	(
		{ before(grammarAccess.getPatternPartAccess().getChainAssignment_1()); }
		(rule__PatternPart__ChainAssignment_1)*
		{ after(grammarAccess.getPatternPartAccess().getChainAssignment_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NodePattern__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NodePattern__Group__0__Impl
	rule__NodePattern__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNodePatternAccess().getLeftParenthesisKeyword_0()); }
	'('
	{ after(grammarAccess.getNodePatternAccess().getLeftParenthesisKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NodePattern__Group__1__Impl
	rule__NodePattern__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNodePatternAccess().getVariableAssignment_1()); }
	(rule__NodePattern__VariableAssignment_1)?
	{ after(grammarAccess.getNodePatternAccess().getVariableAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NodePattern__Group__2__Impl
	rule__NodePattern__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNodePatternAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getNodePatternAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NodePattern__Group__3__Impl
	rule__NodePattern__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNodePatternAccess().getLabelAssignment_3()); }
	(rule__NodePattern__LabelAssignment_3)?
	{ after(grammarAccess.getNodePatternAccess().getLabelAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NodePattern__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNodePatternAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getNodePatternAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PatternElementChain__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PatternElementChain__Group__0__Impl
	rule__PatternElementChain__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternElementChain__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPatternElementChainAccess().getRelationshipPatternAssignment_0()); }
	(rule__PatternElementChain__RelationshipPatternAssignment_0)
	{ after(grammarAccess.getPatternElementChainAccess().getRelationshipPatternAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternElementChain__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PatternElementChain__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternElementChain__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPatternElementChainAccess().getNodePatternAssignment_1()); }
	(rule__PatternElementChain__NodePatternAssignment_1)
	{ after(grammarAccess.getPatternElementChainAccess().getNodePatternAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationshipPattern__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_0__0__Impl
	rule__RelationshipPattern__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_0_0()); }
	ruleleftArrowHead
	{ after(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_0__1__Impl
	rule__RelationshipPattern__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_1()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_0__2__Impl
	rule__RelationshipPattern__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_0_2()); }
	(ruleRelationshipDetail)?
	{ after(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_0__3__Impl
	rule__RelationshipPattern__Group_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_3()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_0__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_0__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_0_4()); }
	rulerightArrowHead
	{ after(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_0_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationshipPattern__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_1__0__Impl
	rule__RelationshipPattern__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_1_0()); }
	ruleleftArrowHead
	{ after(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_1__1__Impl
	rule__RelationshipPattern__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_1()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_1__2__Impl
	rule__RelationshipPattern__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_1_2()); }
	(ruleRelationshipDetail)?
	{ after(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_3()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationshipPattern__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_2__0__Impl
	rule__RelationshipPattern__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_0()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_2__1__Impl
	rule__RelationshipPattern__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_2_1()); }
	(ruleRelationshipDetail)?
	{ after(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_2__2__Impl
	rule__RelationshipPattern__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_2()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_2_3()); }
	rulerightArrowHead
	{ after(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationshipPattern__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_3__0__Impl
	rule__RelationshipPattern__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_0()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_3__1__Impl
	rule__RelationshipPattern__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_3_1()); }
	(ruleRelationshipDetail)?
	{ after(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipPattern__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipPattern__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_2()); }
	ruledash
	{ after(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationshipDetail__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipDetail__Group__0__Impl
	rule__RelationshipDetail__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipDetailAccess().getLeftSquareBracketKeyword_0()); }
	'['
	{ after(grammarAccess.getRelationshipDetailAccess().getLeftSquareBracketKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipDetail__Group__1__Impl
	rule__RelationshipDetail__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipDetailAccess().getVariableAssignment_1()); }
	(rule__RelationshipDetail__VariableAssignment_1)?
	{ after(grammarAccess.getRelationshipDetailAccess().getVariableAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipDetail__Group__2__Impl
	rule__RelationshipDetail__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipDetailAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getRelationshipDetailAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipDetail__Group__3__Impl
	rule__RelationshipDetail__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipDetailAccess().getLabelAssignment_3()); }
	(rule__RelationshipDetail__LabelAssignment_3)?
	{ after(grammarAccess.getRelationshipDetailAccess().getLabelAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationshipDetail__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationshipDetailAccess().getRightSquareBracketKeyword_4()); }
	']'
	{ after(grammarAccess.getRelationshipDetailAccess().getRightSquareBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CypherQuery__QueriesAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCypherQueryAccess().getQueriesQueryParserRuleCall_0()); }
		ruleQuery
		{ after(grammarAccess.getCypherQueryAccess().getQueriesQueryParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Query__PatternAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQueryAccess().getPatternPatternParserRuleCall_1_0()); }
		rulePattern
		{ after(grammarAccess.getQueryAccess().getPatternPatternParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pattern__PartsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPatternAccess().getPartsPatternPartParserRuleCall_0()); }
		rulePatternPart
		{ after(grammarAccess.getPatternAccess().getPartsPatternPartParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternPart__NodeAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPatternPartAccess().getNodeNodePatternParserRuleCall_0_0()); }
		ruleNodePattern
		{ after(grammarAccess.getPatternPartAccess().getNodeNodePatternParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternPart__ChainAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPatternPartAccess().getChainPatternElementChainParserRuleCall_1_0()); }
		rulePatternElementChain
		{ after(grammarAccess.getPatternPartAccess().getChainPatternElementChainParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__VariableAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNodePatternAccess().getVariableVariableParserRuleCall_1_0()); }
		ruleVariable
		{ after(grammarAccess.getNodePatternAccess().getVariableVariableParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NodePattern__LabelAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNodePatternAccess().getLabelLabelParserRuleCall_3_0()); }
		ruleLabel
		{ after(grammarAccess.getNodePatternAccess().getLabelLabelParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternElementChain__RelationshipPatternAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPatternElementChainAccess().getRelationshipPatternRelationshipPatternParserRuleCall_0_0()); }
		ruleRelationshipPattern
		{ after(grammarAccess.getPatternElementChainAccess().getRelationshipPatternRelationshipPatternParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PatternElementChain__NodePatternAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPatternElementChainAccess().getNodePatternNodePatternParserRuleCall_1_0()); }
		ruleNodePattern
		{ after(grammarAccess.getPatternElementChainAccess().getNodePatternNodePatternParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__VariableAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationshipDetailAccess().getVariableVariableParserRuleCall_1_0()); }
		ruleVariable
		{ after(grammarAccess.getRelationshipDetailAccess().getVariableVariableParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationshipDetail__LabelAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationshipDetailAccess().getLabelLabelParserRuleCall_3_0()); }
		ruleLabel
		{ after(grammarAccess.getRelationshipDetailAccess().getLabelLabelParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getNameIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getVariableAccess().getNameIDTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Label__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLabelAccess().getNameIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getLabelAccess().getNameIDTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
