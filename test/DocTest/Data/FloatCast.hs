
{-# LANGUAGE NoMonomorphismRestriction, ExtendedDefaultRules#-}
module DocTest.Data.FloatCast where
import qualified DocTest
import Test.Tasty(testGroup)
import Data.FloatCast

tests = testGroup "Data.FloatCast" <$> sequence [  DocTest.test "src/Data/FloatCast.hs:28" ["13818169556679524352"] (DocTest.asPrint( doubleToWord (-0.15625) ))]