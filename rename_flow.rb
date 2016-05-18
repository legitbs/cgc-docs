DATA.each_line do |line|
  filename = line.chomp
  puts filename
  buf = File.read(filename)
  puts buf.lines[0..5].join("\n")

  puts "enter empty string to not title, or a title"
  cand = gets

  next if cand.chomp.empty?

  puts "titling #{cand.chomp}"

  File.open(filename.chomp, 'w') do |f|
    f.puts '---'
    f.puts "title: #{cand.chomp}"
    f.puts '---'

    f.write buf
  end
end

__END__
/Users/bkerley/Documents/cgc-docs/source/Event-FAQ/event_faq.html.md
/Users/bkerley/Documents/cgc-docs/source/cb-testing/cb-acceptance.html.md
/Users/bkerley/Documents/cgc-docs/source/cb-testing/cb-replay-pov.html.md
/Users/bkerley/Documents/cgc-docs/source/cb-testing/cb-replay.html.md
/Users/bkerley/Documents/cgc-docs/source/cb-testing/cb-test.html.md
/Users/bkerley/Documents/cgc-docs/source/cb-testing/poll-validate.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/newsletter/cpp.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/newsletter/ctf.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/newsletter/ipc.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/newsletter/template.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/building-a-cb.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/cgc-repository.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/debugging-a-cb.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/pin-for-decree.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/ptrace-for-decree.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/running-the-vm.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/scoring-cbs.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/submitting-a-cb.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/testing-a-cb.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/understanding-cfe-povs.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/understanding-poll-generators.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/using-the-network-appliance.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc-release-documentation/walk-throughs/virtual-competiton.html.md
/Users/bkerley/Documents/cgc-docs/source/cgc2elf/cgc2elf.html.md
/Users/bkerley/Documents/cgc-docs/source/cgcef-verify/cgcef_verify.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/allocate.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/deallocate.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/fdwait.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/random.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/receive.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgc/transmit.html.md
/Users/bkerley/Documents/cgc-docs/source/libcgcef/cgc_executable_format.html.md
/Users/bkerley/Documents/cgc-docs/source/libpov/libpov.html.md
/Users/bkerley/Documents/cgc-docs/source/libpov/type1_negotiate.html.md
/Users/bkerley/Documents/cgc-docs/source/libpov/type2_negotiate.html.md
/Users/bkerley/Documents/cgc-docs/source/libpov/type2_submit.html.md
/Users/bkerley/Documents/cgc-docs/source/network-appliance/cb-packet-log.html.md
/Users/bkerley/Documents/cgc-docs/source/network-appliance/cb-proxy.html.md
/Users/bkerley/Documents/cgc-docs/source/network-appliance/verify-rules.html.md
/Users/bkerley/Documents/cgc-docs/source/poll-generator/generate-polls.html.md
/Users/bkerley/Documents/cgc-docs/source/pov-xml2c/pov-xml2c.html.md
/Users/bkerley/Documents/cgc-docs/source/service-launcher/cb-server.html.md
/Users/bkerley/Documents/cgc-docs/source/virtual-competition/ti-client.html.md
/Users/bkerley/Documents/cgc-docs/source/virtual-competition/ti-rotate.html.md
/Users/bkerley/Documents/cgc-docs/source/virtual-competition/ti-server.html.md
