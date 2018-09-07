final packageCode = """
<code>awesome_package/
  lib/
    awesome_package.dart
    fonts/
      lobster.ttf
</code>
""";

final dependencyCode = """
<code class=" language-yaml"><span class="na">dependencies</span><span class="pi">:</span>
  <span class="na">awesome_package</span><span class="pi">:</span> <span class="s">version_name</span>
</code>
""";

final fontDeclaration = """
<code class=" language-yaml"><span class="na">flutter</span><span class="pi">:</span>
  <span class="na">fonts</span><span class="pi">:</span>
    <span class="pi">-</span> <span class="na">family</span><span class="pi">:</span> <span class="s">Lobster</span>
      <span class="na">fonts</span><span class="pi">:</span>
        <span class="pi">-</span> <span class="na">asset</span><span class="pi">:</span> <span class="s">packages/awesome_package/fonts/lobster.ttf</span>
</code>
""";

final fontUsage = """
<code class=" language-dart"><span class="token function"><span class="n">Text</span></span><span class="token punctuation"><span class="o">(</span></span>
  <span class="token string"><span class="s">'Using the Lobster font from the awesome_package'</span></span><span class="token punctuation"><span class="o">,</span></span>
  <span class="nl">style<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">TextStyle</span></span><span class="token punctuation"><span class="o">(</span></span>
    <span class="nl">fontFamily<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token string"><span class="s">'Lobster'</span></span><span class="token punctuation"><span class="o">,</span></span>
    <span class="nl">package<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token string"><span class="s">'awesome_package'</span></span><span class="token punctuation"><span class="o">,</span></span>
  <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
<span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";