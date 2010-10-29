import re

class PrimeChecker(object):
	def is_prime(self, num):
		return num in prime_dict

	def load(self, file):
		self.prime_dict = {}

		with open(file, 'r') as f:
			for line in f:
				line = line.strip()
				if re.match('^\d', line):
					for num in re.split('\s+', line):
						self.prime_dict[num] = 1

if __name__ == '__main__':
	inst = PrimeChecker()
	inst.load("primes.txt")
