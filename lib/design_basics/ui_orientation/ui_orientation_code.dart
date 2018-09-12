final code = """
<code class=" language-dart"><span class="token function"><span class="n">OrientationBuilder</span></span><span class="token punctuation"><span class="o">(</span></span>
  <span class="nl">builder<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token punctuation"><span class="o">(</span></span><span class="n">context</span><span class="token punctuation"><span class="o">,</span></span> <span class="n">orientation</span><span class="token punctuation"><span class="o">)</span></span> <span class="token punctuation"><span class="o">{</span></span>
    <span class="token keyword"><span class="k">return</span></span> <span class="n">GridView</span><span class="token punctuation"><span class="o">.</span></span><span class="token function"><span class="na">count</span></span><span class="token punctuation"><span class="o">(</span></span>
      <span class="token comment" spellcheck="true"><span class="c1">// Create a grid with 2 columns in portrait mode, or 3 columns in</span></span>
      <span class="token comment" spellcheck="true"><span class="c1">// landscape mode.</span></span>
      <span class="nl">crossAxisCount<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="n">orientation</span> <span class="token operator"><span class="o">==</span></span> <span class="n">Orientation</span><span class="token punctuation"><span class="o">.</span></span><span class="na">portrait</span> <span class="token operator"><span class="o">?</span></span> <span class="token number"><span class="mi">2</span></span> <span class="token punctuation"><span class="o">:</span></span> <span class="token number"><span class="mi">3</span></span><span class="token punctuation"><span class="o">,</span></span>
    <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
  <span class="token punctuation"></span><span class="o"><span class="token punctuation">}</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
<span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";