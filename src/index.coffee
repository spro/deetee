start_times = {}
times = {}

now = -> new Date().getTime()

start = (name) ->
    start_times[name] = now()

end = (name) ->
    dt = now() - start_times[name]
    times[name] ||= 0
    times[name] += dt

print = ->
    console.log '[times]'
    for name, t of times
        console.log '*', name, t

printEvery = (t) ->
    setInterval print, t

module.exports = {
    start, end, times, printEvery
}

