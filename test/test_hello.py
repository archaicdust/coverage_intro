import unittest

from hello import f


class Hello_f_Test(unittest.TestCase):
    def test_f(self):
        result = f(True, False)
        self.assertEqual(result, 1)


