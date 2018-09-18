final items = """
<code class=" language-dart"><span class="token keyword"><span class="kd">final</span></span> <span class="n">items</span> <span class="token operator"><span class="o">=</span></span> <span class="n">List</span><span class="token operator"></span><span class="kt">String</span><span class="token operator"></span><span class="o"><span class="token punctuation">.</span></span><span class="token punctuation"></span><span class="token function"><span class="na">generate</span></span><span class="token punctuation"><span class="o">(</span></span><span class="token number"><span class="mi">10000</span></span><span class="token punctuation"><span class="o">,</span></span> <span class="token punctuation"><span class="o">(</span></span><span class="n">i</span><span class="token punctuation"><span class="o">)</span></span> <span class="token operator"></span><span class="o"><span class="token operator">=</span></span><span class="token operator"></span> <span class="token string"><span class="s">{return "Item </span><span class="si">\$i</span><span class="s">";}</span></span><span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";

final list = """
<code class=" language-dart"><span class="n">ListView</span><span class="token punctuation"><span class="o">.</span></span><span class="token function"><span class="na">builder</span></span><span class="token punctuation"><span class="o">(</span></span>
  <span class="nl">itemCount<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="n">items</span><span class="token punctuation"><span class="o">.</span></span><span class="na">length</span><span class="token punctuation"><span class="o">,</span></span>
  <span class="nl">itemBuilder<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token punctuation"><span class="o">(</span></span><span class="n">context</span><span class="token punctuation"><span class="o">,</span></span> <span class="n">index</span><span class="token punctuation"><span class="o">)</span></span> <span class="token punctuation"><span class="o">{</span></span>
    <span class="token keyword"><span class="k">return</span></span> <span class="token function"><span class="n">ListTile</span></span><span class="token punctuation"><span class="o">(</span></span>
      <span class="nl">title<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">Text</span></span><span class="token punctuation"><span class="o">(</span></span><span class="token string"><span class="s">'</span><span class="si">\${items[index]}</span><span class="s">'</span></span><span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
    <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
  <span class="token punctuation"></span><span class="o"><span class="token punctuation">}</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
<span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";