var n = Int(readLine()!)!
var count: Int = 0

while n > 1 {
  if n % 5 == 0 {
    count += n / 5
    break
  }

  n -= 2
  count += 1
}

print(n == 1 ? -1 : count)

/* 

주소 : https://www.acmicpc.net/problem/14916

풀이 방법 : 

그리디 문제인 만큼 가장 좋은 방법은 5원으로 전부 거슬러주는게 가장 좋기에 첫 번쨰로 5로 나누고 0이되면 나눴을때의 몫 값이 반복된 횟수와 동일하므로 count 변수를 만들어 개수를 출력해주었다.

만약, 5원으로 계속 거슬러주었을때 0으로 떨어지지 않는다면, 2원을 거슬러주고 거슬러줄 돈이 5원으로 나눠줄 수 있는지 확인하고 안되면 다시 2원을 한 개씩 주면서 반복하였다.

또한 거슬러 줄 수 없다면 -1을 출력하라고 하였는데, 경우의 수에 1을 제외하면 2원과 5원으로 다 거슬러 줄 수 있기에, 거슬러줄 돈이 1원이라면 -1을 출력하도록 하였다.

메모리 : 69100KB
시간 : 8ms

*/