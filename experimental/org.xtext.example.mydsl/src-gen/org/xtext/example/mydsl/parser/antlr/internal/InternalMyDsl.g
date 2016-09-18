/*
 * generated by Xtext 2.10.0
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}

@parser::members {

 	private MyDslGrammarAccess grammarAccess;

    public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "CypherQuery";
   	}

   	@Override
   	protected MyDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleCypherQuery
entryRuleCypherQuery returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCypherQueryRule()); }
	iv_ruleCypherQuery=ruleCypherQuery
	{ $current=$iv_ruleCypherQuery.current; }
	EOF;

// Rule CypherQuery
ruleCypherQuery returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getCypherQueryAccess().getQueriesQueryParserRuleCall_0());
			}
			lv_queries_0_0=ruleQuery
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getCypherQueryRule());
				}
				add(
					$current,
					"queries",
					lv_queries_0_0,
					"org.xtext.example.mydsl.MyDsl.Query");
				afterParserOrEnumRuleCall();
			}
		)
	)+
;

// Entry rule entryRuleQuery
entryRuleQuery returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQueryRule()); }
	iv_ruleQuery=ruleQuery
	{ $current=$iv_ruleQuery.current; }
	EOF;

// Rule Query
ruleQuery returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='CREATE'
		{
			newLeafNode(otherlv_0, grammarAccess.getQueryAccess().getCREATEKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQueryAccess().getPatternPatternParserRuleCall_1_0());
				}
				lv_pattern_1_0=rulePattern
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQueryRule());
					}
					set(
						$current,
						"pattern",
						lv_pattern_1_0,
						"org.xtext.example.mydsl.MyDsl.Pattern");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePattern
entryRulePattern returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPatternRule()); }
	iv_rulePattern=rulePattern
	{ $current=$iv_rulePattern.current; }
	EOF;

// Rule Pattern
rulePattern returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getPatternAccess().getPartsPatternPartParserRuleCall_0());
			}
			lv_parts_0_0=rulePatternPart
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getPatternRule());
				}
				add(
					$current,
					"parts",
					lv_parts_0_0,
					"org.xtext.example.mydsl.MyDsl.PatternPart");
				afterParserOrEnumRuleCall();
			}
		)
	)+
;

// Entry rule entryRulePatternPart
entryRulePatternPart returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPatternPartRule()); }
	iv_rulePatternPart=rulePatternPart
	{ $current=$iv_rulePatternPart.current; }
	EOF;

// Rule PatternPart
rulePatternPart returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getPatternPartAccess().getNodeNodePatternParserRuleCall_0_0());
				}
				lv_node_0_0=ruleNodePattern
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPatternPartRule());
					}
					set(
						$current,
						"node",
						lv_node_0_0,
						"org.xtext.example.mydsl.MyDsl.NodePattern");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getPatternPartAccess().getChainPatternElementChainParserRuleCall_1_0());
				}
				lv_chain_1_0=rulePatternElementChain
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPatternPartRule());
					}
					add(
						$current,
						"chain",
						lv_chain_1_0,
						"org.xtext.example.mydsl.MyDsl.PatternElementChain");
					afterParserOrEnumRuleCall();
				}
			)
		)+
	)
;

// Entry rule entryRuleNodePattern
entryRuleNodePattern returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNodePatternRule()); }
	iv_ruleNodePattern=ruleNodePattern
	{ $current=$iv_ruleNodePattern.current; }
	EOF;

// Rule NodePattern
ruleNodePattern returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='('
		{
			newLeafNode(otherlv_0, grammarAccess.getNodePatternAccess().getLeftParenthesisKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getNodePatternAccess().getVariableVariableParserRuleCall_1_0());
				}
				lv_variable_1_0=ruleVariable
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getNodePatternRule());
					}
					set(
						$current,
						"variable",
						lv_variable_1_0,
						"org.xtext.example.mydsl.MyDsl.Variable");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getNodePatternAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getNodePatternAccess().getLabelLabelParserRuleCall_3_0());
				}
				lv_label_3_0=ruleLabel
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getNodePatternRule());
					}
					set(
						$current,
						"label",
						lv_label_3_0,
						"org.xtext.example.mydsl.MyDsl.Label");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_4=')'
		{
			newLeafNode(otherlv_4, grammarAccess.getNodePatternAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRulePatternElementChain
entryRulePatternElementChain returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPatternElementChainRule()); }
	iv_rulePatternElementChain=rulePatternElementChain
	{ $current=$iv_rulePatternElementChain.current; }
	EOF;

// Rule PatternElementChain
rulePatternElementChain returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getPatternElementChainAccess().getRelationshipPatternRelationshipPatternParserRuleCall_0_0());
				}
				lv_relationshipPattern_0_0=ruleRelationshipPattern
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPatternElementChainRule());
					}
					set(
						$current,
						"relationshipPattern",
						lv_relationshipPattern_0_0,
						"org.xtext.example.mydsl.MyDsl.RelationshipPattern");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getPatternElementChainAccess().getNodePatternNodePatternParserRuleCall_1_0());
				}
				lv_nodePattern_1_0=ruleNodePattern
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPatternElementChainRule());
					}
					set(
						$current,
						"nodePattern",
						lv_nodePattern_1_0,
						"org.xtext.example.mydsl.MyDsl.NodePattern");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleRelationshipPattern
entryRuleRelationshipPattern returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRelationshipPatternRule()); }
	iv_ruleRelationshipPattern=ruleRelationshipPattern
	{ $current=$iv_ruleRelationshipPattern.current; }
	EOF;

// Rule RelationshipPattern
ruleRelationshipPattern returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_0_0());
			}
			ruleleftArrowHead
			{
				afterParserOrEnumRuleCall();
			}
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_1());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			(
				{
					newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_0_2());
				}
				this_RelationshipDetail_2=ruleRelationshipDetail
				{
					$current = $this_RelationshipDetail_2.current;
					afterParserOrEnumRuleCall();
				}
			)?
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_0_3());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_0_4());
			}
			rulerightArrowHead
			{
				afterParserOrEnumRuleCall();
			}
		)
		    |
		(
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getLeftArrowHeadParserRuleCall_1_0());
			}
			ruleleftArrowHead
			{
				afterParserOrEnumRuleCall();
			}
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_1());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			(
				{
					newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_1_2());
				}
				this_RelationshipDetail_7=ruleRelationshipDetail
				{
					$current = $this_RelationshipDetail_7.current;
					afterParserOrEnumRuleCall();
				}
			)?
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_1_3());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
		)
		    |
		(
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_0());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			(
				{
					newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_2_1());
				}
				this_RelationshipDetail_10=ruleRelationshipDetail
				{
					$current = $this_RelationshipDetail_10.current;
					afterParserOrEnumRuleCall();
				}
			)?
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_2_2());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRightArrowHeadParserRuleCall_2_3());
			}
			rulerightArrowHead
			{
				afterParserOrEnumRuleCall();
			}
		)
		    |
		(
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_0());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
			(
				{
					newCompositeNode(grammarAccess.getRelationshipPatternAccess().getRelationshipDetailParserRuleCall_3_1());
				}
				this_RelationshipDetail_14=ruleRelationshipDetail
				{
					$current = $this_RelationshipDetail_14.current;
					afterParserOrEnumRuleCall();
				}
			)?
			{
				newCompositeNode(grammarAccess.getRelationshipPatternAccess().getDashParserRuleCall_3_2());
			}
			ruledash
			{
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleRelationshipDetail
entryRuleRelationshipDetail returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRelationshipDetailRule()); }
	iv_ruleRelationshipDetail=ruleRelationshipDetail
	{ $current=$iv_ruleRelationshipDetail.current; }
	EOF;

// Rule RelationshipDetail
ruleRelationshipDetail returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='['
		{
			newLeafNode(otherlv_0, grammarAccess.getRelationshipDetailAccess().getLeftSquareBracketKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRelationshipDetailAccess().getVariableVariableParserRuleCall_1_0());
				}
				lv_variable_1_0=ruleVariable
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRelationshipDetailRule());
					}
					set(
						$current,
						"variable",
						lv_variable_1_0,
						"org.xtext.example.mydsl.MyDsl.Variable");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getRelationshipDetailAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRelationshipDetailAccess().getLabelLabelParserRuleCall_3_0());
				}
				lv_label_3_0=ruleLabel
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRelationshipDetailRule());
					}
					set(
						$current,
						"label",
						lv_label_3_0,
						"org.xtext.example.mydsl.MyDsl.Label");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_4=']'
		{
			newLeafNode(otherlv_4, grammarAccess.getRelationshipDetailAccess().getRightSquareBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleVariable
entryRuleVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableRule()); }
	iv_ruleVariable=ruleVariable
	{ $current=$iv_ruleVariable.current; }
	EOF;

// Rule Variable
ruleVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getVariableAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getVariableRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleLabel
entryRuleLabel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLabelRule()); }
	iv_ruleLabel=ruleLabel
	{ $current=$iv_ruleLabel.current; }
	EOF;

// Rule Label
ruleLabel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getLabelAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getLabelRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleleftArrowHead
entryRuleleftArrowHead returns [String current=null]:
	{ newCompositeNode(grammarAccess.getLeftArrowHeadRule()); }
	iv_ruleleftArrowHead=ruleleftArrowHead
	{ $current=$iv_ruleleftArrowHead.current.getText(); }
	EOF;

// Rule leftArrowHead
ruleleftArrowHead returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='<'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getLeftArrowHeadAccess().getLessThanSignKeyword_0());
		}
		    |
		kw='\u27E8'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getLeftArrowHeadAccess().getMathematicalLeftAngleBracketKeyword_1());
		}
		    |
		kw='\u3008'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getLeftArrowHeadAccess().getLeftAngleBracketKeyword_2());
		}
		    |
		kw='\uFE64'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getLeftArrowHeadAccess().getSmallLessThanSignKeyword_3());
		}
		    |
		kw='\uFF1C'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getLeftArrowHeadAccess().getFullwidthLessThanSignKeyword_4());
		}
	)
;

// Entry rule entryRulerightArrowHead
entryRulerightArrowHead returns [String current=null]:
	{ newCompositeNode(grammarAccess.getRightArrowHeadRule()); }
	iv_rulerightArrowHead=rulerightArrowHead
	{ $current=$iv_rulerightArrowHead.current.getText(); }
	EOF;

// Rule rightArrowHead
rulerightArrowHead returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='>'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getRightArrowHeadAccess().getGreaterThanSignKeyword_0());
		}
		    |
		kw='\u27E9'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getRightArrowHeadAccess().getMathematicalRightAngleBracketKeyword_1());
		}
		    |
		kw='\u3009'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getRightArrowHeadAccess().getRightAngleBracketKeyword_2());
		}
		    |
		kw='\uFE65'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getRightArrowHeadAccess().getSmallGreaterThanSignKeyword_3());
		}
		    |
		kw='\uFF1E'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getRightArrowHeadAccess().getFullwidthGreaterThanSignKeyword_4());
		}
	)
;

// Entry rule entryRuledash
entryRuledash returns [String current=null]:
	{ newCompositeNode(grammarAccess.getDashRule()); }
	iv_ruledash=ruledash
	{ $current=$iv_ruledash.current.getText(); }
	EOF;

// Rule dash
ruledash returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='-'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getHyphenMinusKeyword_0());
		}
		    |
		kw='\u00AD'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getSoftHyphenKeyword_1());
		}
		    |
		kw='\u2010'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getHyphenKeyword_2());
		}
		    |
		kw='\u2011'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getNonBreakingHyphenKeyword_3());
		}
		    |
		kw='\u2012'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getFigureDashKeyword_4());
		}
		    |
		kw='\u2013'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getEnDashKeyword_5());
		}
		    |
		kw='\u2014'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getEmDashKeyword_6());
		}
		    |
		kw='\u2015'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getHorizontalBarKeyword_7());
		}
		    |
		kw='\u2212'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getMinusSignKeyword_8());
		}
		    |
		kw='\uFE58'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getSmallEmDashKeyword_9());
		}
		    |
		kw='\uFE63'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getSmallHyphenMinusKeyword_10());
		}
		    |
		kw='\uFF0D'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getDashAccess().getFullwidthHyphenMinusKeyword_11());
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;