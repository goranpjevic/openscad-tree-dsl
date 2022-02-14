/*
 * generated by Xtext 2.25.0
 */
package org.xtext.example.mydsl.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.xtext.example.mydsl.myDsl.Model

@ExtendWith(InjectionExtension)
@InjectWith(MyDslInjectorProvider)
class MyDslParsingTest2 {
	@Inject
	ParseHelper<Model> parseHelper
	
	@Test
	def void loadModel() {
		// leaves.rotation.x.min without ''
		val result = parseHelper.parse('''
			tree apple_tree:
			  type apple
			  leaves:
			    enable
			    rotation:
			      x:
			        min 10
			        max '150'
			      y:
			        min '40'
			        max '44'
			      z:
			        min '0'
			        max '360'
			    fruit:
			      enable
			      positionRange:
			        min '0.8'
			        max '0.8'
			      amount:
			        min '3'
			        max '3'
			      color red
			    color green
			  groundFruit:
			    enable
			    color red
			    amount '10'
			  color sienna
			  size '50'
			  roots enable
			  branch:
			    numberOfBranches '4'
			    width:
			      min '8'
			      max '12'
			    scale:
			      min '0.6'
			      max '0.8'
			    rotation:
			      x:
			        min '0'
			        max '70'
			      y:
			        min '-180'
			        max '180'
			  branchLevels '5'
		''')		
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(!errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
}
