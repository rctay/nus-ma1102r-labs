import re

class PrimeChecker(object):
	def is_prime(self, num):
		return num in self.prime_dict

	def load(self, file):
		self.prime_dict = {}

		with open(file, 'r') as f:
			for line in f:
				line = line.strip()
				if re.match('^\d', line):
					for num in re.split('\s+', line):
						self.prime_dict[int(num)] = 1

def G(num, prime_func):
	count = 0
	for i in range(1, num/2+1):
		other = num - i
		if prime_func(i) and prime_func(other):
			print "%d + %d = %d" % (i, other, num)
			count += 1
	return count

if __name__ == '__main__':
	inst = PrimeChecker()
	inst.load("primes.txt")
