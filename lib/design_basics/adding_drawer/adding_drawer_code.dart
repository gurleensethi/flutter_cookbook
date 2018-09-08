final basicDrawer = """
<code class=" language-dart"><span class="token function"><span class="n">Scaffold</span></span><span class="token punctuation"><span class="o">(</span></span>
  <span class="nl">drawer<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">Drawer</span></span><span class="token punctuation"><span class="o">(</span></span>
    <span class="nl">child<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token comment" spellcheck="true"><span class="c1">...</span></span>
  <span class="token punctuation"><span class="o">)</span></span>
<span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";

final completeDrawer = """
<code class=" language-dart"><span class="token function"><span class="n">Drawer</span></span><span class="token punctuation"><span class="o">(</span></span>
  <span class="token comment" spellcheck="true"><span class="c1">// Add a ListView to the drawer. This ensures the user can scroll</span></span>
  <span class="token comment" spellcheck="true"><span class="c1">// through the options in the Drawer if there isn't enough vertical</span></span>
  <span class="token comment" spellcheck="true"><span class="c1">// space to fit everything.</span></span>
  <span class="nl">child<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">ListView</span></span><span class="token punctuation"><span class="o">(</span></span>
    <span class="token comment" spellcheck="true"><span class="c1">// Important: Remove any padding from the ListView.</span></span>
    <span class="nl">padding<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="n">EdgeInsets</span><span class="token punctuation"><span class="o">.</span></span><span class="na">zero</span><span class="token punctuation"><span class="o">,</span></span>
    <span class="nl">children<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token operator"><span class="o">&lt;</span></span><span class="n">Widget</span><span class="token operator"></span><span class="o"><span class="token operator">&gt;</span><span class="token punctuation">[</span></span><span class="token punctuation"></span>
      <span class="token function"><span class="n">DrawerHeader</span></span><span class="token punctuation"><span class="o">(</span></span>
        <span class="nl">child<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">Text</span></span><span class="token punctuation"><span class="o">(</span></span><span class="token string"><span class="s">'Drawer Header'</span></span><span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
        <span class="nl">decoration<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">BoxDecoration</span></span><span class="token punctuation"><span class="o">(</span></span>
          <span class="nl">color<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="n">Colors</span><span class="token punctuation"><span class="o">.</span></span><span class="na">blue</span><span class="token punctuation"><span class="o">,</span></span>
        <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
      <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
      <span class="token function"><span class="n">ListTile</span></span><span class="token punctuation"><span class="o">(</span></span>
        <span class="nl">title<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">Text</span></span><span class="token punctuation"><span class="o">(</span></span><span class="token string"><span class="s">'Item 1'</span></span><span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
        <span class="nl">onTap<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token punctuation"></span><span class="o"><span class="token punctuation">(</span><span class="token punctuation">)</span></span><span class="token punctuation"></span> <span class="token punctuation"><span class="o">{</span></span>
          <span class="token comment" spellcheck="true"><span class="c1">// Update the state of the app</span></span>
          <span class="token comment" spellcheck="true"><span class="c1">// ...</span></span>
        <span class="token punctuation"></span><span class="o"><span class="token punctuation">}</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
      <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
      <span class="token function"><span class="n">ListTile</span></span><span class="token punctuation"><span class="o">(</span></span>
        <span class="nl">title<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token function"><span class="n">Text</span></span><span class="token punctuation"><span class="o">(</span></span><span class="token string"><span class="s">'Item 2'</span></span><span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
        <span class="nl">onTap<span class="token punctuation">:</span></span><span class="token punctuation"></span> <span class="token punctuation"></span><span class="o"><span class="token punctuation">(</span><span class="token punctuation">)</span></span><span class="token punctuation"></span> <span class="token punctuation"><span class="o">{</span></span>
          <span class="token comment" spellcheck="true"><span class="c1">// Update the state of the app</span></span>
          <span class="token comment" spellcheck="true"><span class="c1">// ...</span></span>
        <span class="token punctuation"></span><span class="o"><span class="token punctuation">}</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
      <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
    <span class="token punctuation"></span><span class="o"><span class="token punctuation">]</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
  <span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">,</span></span><span class="token punctuation"></span>
<span class="token punctuation"></span><span class="o"><span class="token punctuation">)</span><span class="token punctuation">;</span></span><span class="token punctuation"></span>
</code>
""";