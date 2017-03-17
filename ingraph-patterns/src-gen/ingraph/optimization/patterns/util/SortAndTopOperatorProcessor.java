/**
 * Generated from platform:/resource/ingraph-patterns/src/ingraph/optimization/patterns/Relalg2Rete.vql
 */
package ingraph.optimization.patterns.util;

import ingraph.optimization.patterns.SortAndTopOperatorMatch;
import org.eclipse.viatra.query.runtime.api.IMatchProcessor;
import relalg.Operator;
import relalg.SortOperator;
import relalg.TopOperator;

/**
 * A match processor tailored for the ingraph.optimization.patterns.sortAndTopOperator pattern.
 * 
 * Clients should derive an (anonymous) class that implements the abstract process().
 * 
 */
@SuppressWarnings("all")
public abstract class SortAndTopOperatorProcessor implements IMatchProcessor<SortAndTopOperatorMatch> {
  /**
   * Defines the action that is to be executed on each match.
   * @param pParentOperator the value of pattern parameter parentOperator in the currently processed match
   * @param pSortOperator the value of pattern parameter sortOperator in the currently processed match
   * @param pTopOperator the value of pattern parameter topOperator in the currently processed match
   * 
   */
  public abstract void process(final Operator pParentOperator, final SortOperator pSortOperator, final TopOperator pTopOperator);
  
  @Override
  public void process(final SortAndTopOperatorMatch match) {
    process(match.getParentOperator(), match.getSortOperator(), match.getTopOperator());
  }
}
