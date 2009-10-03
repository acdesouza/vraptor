
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/header.jsp">
	<jsp:param name="extras" value='
		<link href="../includes/css/java.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="../includes/css/xml2html.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="../includes/css/style.css" rel="stylesheet" type="text/css" media="screen" />
	'/>
</jsp:include><div id="contentWrap">
    	<div id="contentDocumentacao">
        	<h2><span>documentação</span></h2>
            <h3>documentação toda em português, configuração, migração e utilização.</h3>
            
            <div id="subMenuDoc">
            	<img id="positionTop" src="../includes/images/subMenuTop-trans.png" />
                <img id="positionBottom" src="../includes/images/subMenuBottom-trans.png" />
            	<ol type="1">
									<li><a class="link_toc" href="../../documentacao/vraptor3-guia-de-1-minuto/">1. VRaptor3 - Guia de 1 minuto</a></li>
		
									<li><a class="link_toc" href="../../documentacao/vraptor3-o-guia-inicial-de-10-minutos/">2. VRaptor3 - o guia inicial de 10 minutos</a></li>
		
									<li><a class="link_toc" href="../../documentacao/resources-rest/">3. Resources-Rest</a></li>
		
									<li><a class="link_toc" href="../../documentacao/componentes/">4. Componentes</a></li>
		
									<li><a class="link_toc" href="../../documentacao/conversores/">5. Conversores</a></li>
		
									<li><a class="link_toc" href="../../documentacao/interceptadores/">6. Interceptadores</a></li>
		
									<li><a class="link_toc" href="../../documentacao/validacao/">7. Validação</a></li>
		
									<li><a class="link_toc" href="../../documentacao/view-e-ajax/">8. View e Ajax</a></li>
		
									<li><a class="link_toc" href="../../documentacao/injecao-de-dependencias/">9. Injeção de dependências</a></li>
		
									<li><a class="link_toc" href="../../documentacao/downloading/">10. Downloading</a></li>
		
									<li><a class="link_toc" href="../../documentacao/componentes-utilitarios-opcionais/">11. Componentes Utilitários Opcionais</a></li>
		
									<li><a class="link_toc" href="../../documentacao/configuracoes-avancadas-sobrescrevendo-as-convencoes-e-comportamento-do-vraptor/">12. Configurações avancadas: sobrescrevendo as convenções e comportamento do VRaptor</a></li>
		
									<li><a class="link_toc" href="../../documentacao/spring-joda-time-hibernate-e-google-app-engine/">13. Spring, Joda Time, Hibernate e Google App Engine</a></li>
		
									<li><a class="link_toc" href="../../documentacao/testando-componentes-e-controllers/">14. Testando componentes e controllers</a></li>
		
									<li><a class="link_toc" href="../../documentacao/changelog/">15. ChangeLog</a></li>
		
									<li><a class="link_toc" href="../../documentacao/migrando-do-vraptor2-para-o-vraptor3/">16. Migrando do VRaptor2 para o VRaptor3</a></li>
		
                </ol>
            </div><!-- submenu-->
                        
            <div id="textoCapitulo">
	
		<h2 class="chapter">VRaptor3 - o guia inicial de 10 minutos</h2>

		


<h3 class="section">Começando o projeto: uma loja virtual</h3>
	    	<span class="paragraph">Vamos come&ccedil;ar baixando o <em class="italic">vraptor-blank-project</em>, do site <a class="link" target="_blank" href="http://vraptor.caelum.com.br/download.html.">http://vraptor.caelum.com.br/download.html.</a>
Esse blank-project j&aacute; possui a configura&ccedil;&atilde;o no web.xml e os jars no WEB-INF/lib necess&aacute;rios para come&ccedil;ar
a desenvolver no VRaptor. E voc&ecirc; pode, ainda, importar esse projeto diretamente no Eclipse.</span>
	    	<span class="paragraph">Da configura&ccedil;&atilde;o padr&atilde;o, vamos apenas mudar o pacote base da configura&ccedil;&atilde;o, no web.xml:</span>
	    	<div class="xml"><code class="xml"><span class="textag">&lt;context-param&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;param-name&gt;</span><span class="texnormal">br.com.caelum.vraptor.packages</span><span class="textag">&lt;/param-name&gt;</span><span class="texnormal"><br /></span>
<strong><span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;param-value&gt;</span><span class="texnormal">br.com.nomedaempresa.nomedoprojeto</span><span class="textag">&lt;/param-value&gt;</span><span class="texnormal"><br /></span></strong>
<span class="texnormal"></span><span class="textag">&lt;/context-param&gt;</span></code></div>
	    	<span class="paragraph">Desse modo, toda a sua aplica&ccedil;&atilde;o <strong class="definition">deve</strong> estar abaixo do pacote <code class="inlineCode">br.com.nomedaempresa.nomedoprojeto</code>,
para que o VRaptor consiga encontrar seus componentes e gerenciar suas depend&ecirc;ncias. No nosso caso ser&aacute;:</span>
	    	<div class="xml"><code class="xml"><span class="textag">&lt;context-param&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;param-name&gt;</span><span class="texnormal">br.com.caelum.vraptor.packages</span><span class="textag">&lt;/param-name&gt;</span><span class="texnormal"><br /></span>
<strong><span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;param-value&gt;</span><span class="texnormal">br.com.caelum.lojavirtual</span><span class="textag">&lt;/param-value&gt;</span><span class="texnormal"><br /></span></strong>
<span class="texnormal"></span><span class="textag">&lt;/context-param&gt;</span></code></div>
	    	<span class="paragraph">Supondo que o contexto web da aplica&ccedil;&atilde;o foi mudado para <code class="inlineCode">/lojavirtual</code>, se voc&ecirc; rodar o exemplo e
acessar a URI <code class="inlineCode"><a class="link" target="_blank" href="http://localhost:8080/lojavirtual</code>">http://localhost:8080/lojavirtual%%</a> voc&ecirc; deve ver um <strong class="definition">It works!</strong> na tela.</span>
		

<h3 class="section">Um cadastro de produtos</h3>
	    	<span class="paragraph">Para come&ccedil;ar o sistema, vamos come&ccedil;ar com cadastro de produtos. Precisamos de uma classe que vai
representar o produto, e vamos us&aacute;-la para guardar produtos no banco, usando o Hibernate:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Entity<br />
</span><span class="java4">public class </span><span class="java10">Produto </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Id<br />
&nbsp;&nbsp;&nbsp; @GeneratedValue<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">Long id;<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">String nome;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">String descricao;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">Double preco;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//getter e setters<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">Precisamos tamb&eacute;m de uma classe que vai <em class="italic">controlar</em> o cadastro de produtos, tratando requisi&ccedil;&otilde;es
web. Essa classe vai ser o <code class="inlineCode">Controller</code> de produtos:</span>
	    	<div class="java"><code class="java">
<span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
}</span></code></div>
	    	<span class="paragraph">A classe ProdutosController vai expor URIs para serem acessadas via web, ou seja, vai expor recursos
da sua aplica&ccedil;&atilde;o. E para indicar isso, voc&ecirc; precisa anot&aacute;-la com com <code class="inlineCode">@Resource</code>:</span>
	    	<div class="java"><code class="java">
<strong><span class="java16">@Resource<br /></strong>
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
}</span></code></div>
	    	<span class="paragraph">Ao colocar essa anota&ccedil;&atilde;o na classe, todos os m&eacute;todos p&uacute;blicos dela ser&atilde;o acess&iacute;veis via web. Por
exemplo, se tivermos um m&eacute;todo <code class="inlineCode">lista</code> na classe:</span>
	    	<div class="java"><code class="java">
<strong><span class="java16">@Resource<br /></strong>
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; lista</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return new </span><span class="java10">ArrayList&lt;Produto&gt;</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">o VRaptor automaticamente redireciona todas as requisi&ccedil;&otilde;es &agrave; URI <code class="inlineCode">/produtos/lista</code> para esse m&eacute;todo.
Ou seja, a conven&ccedil;&atilde;o para a cria&ccedil;&atilde;o de URIs &eacute; <code class="inlineCode">/&lt;nome_do_controller&gt;/&lt;nome_do_metodo</code>.</span>
	    	<span class="paragraph">Ao terminar a execu&ccedil;&atilde;o do m&eacute;todo, o VRaptor vai fazer o <code class="inlineCode">dispatch</code> da requisi&ccedil;&atilde;o para o jsp
<code class="inlineCode">/WEB-INF/jsp/produtos/lista.jsp</code>. Ou seja, a conven&ccedil;&atilde;o para a view padr&atilde;o &eacute;
<code class="inlineCode">/WEB-INF/jsp/&lt;nome_do_controller&gt;/&lt;nome_do_metodo&gt;.jsp</code>.</span>
	    	<span class="paragraph">O m&eacute;todo <code class="inlineCode">lista</code> retorna uma lista de produtos, mas como acess&aacute;-la no jsp? No VRaptor, o retorno
do m&eacute;todo &eacute; exportado para a jsp atrav&eacute;s de atributos da requisi&ccedil;&atilde;o. No caso do m&eacute;todo <code class="inlineCode">lista</code>,
vai existir um atributo chamado <strong class="definition">produtoList</strong> contendo a lista retornada:</span>
	    	<span class="paragraph">lista.jsp</span>
	    	<div class="xml"><code class="xml"><span class="textag">&lt;ul&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;c:forEach</span>&nbsp;<span class="texattrib">items=</span><span class="texvalue">"${produtoList}"</span>&nbsp;<span class="texattrib">var=</span><span class="texvalue">"produto"</span><span class="textag">&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;li&gt;</span><span class="texnormal">&nbsp;${produto.nome}&nbsp;-&nbsp;${produto.descricao}&nbsp;</span><span class="textag">&lt;/li&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;/c:forEach&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;/ul&gt;</span></code></div>
	    	<span class="paragraph">A conven&ccedil;&atilde;o para o nome dos atributos exportados &eacute; bastante intuitiva: se for uma collection,
como o caso do m&eacute;todo acima, o atributo ser&aacute; &lt;tipoDaCollection&gt;List, produtoList no caso;
se for uma classe qualquer vai ser o nome da classe com a primeira letra min&uacute;scula. Se o
m&eacute;todo retorna <code class="inlineCode">Produto</code>, o atributo exportado ser&aacute; <code class="inlineCode">produto</code>.</span>
		

<h3 class="section">Criando o ProdutoDao: injeção de Dependências</h3>
	    	<span class="paragraph">O VRaptor usa fortemente o conceito de Inje&ccedil;&atilde;o de Depend&ecirc;ncias e Invers&atilde;o de Controle.
A id&eacute;ia &eacute; que voc&ecirc; n&atilde;o precisa criar ou buscar as depend&ecirc;ncias da sua classe, voc&ecirc; simplesmente
as recebe e o VRaptor se encarrega de cri&aacute;-las pra voc&ecirc;. Mais informa&ccedil;&otilde;es no cap&iacute;tulo de
Inje&ccedil;&atilde;o de Depend&ecirc;ncias.</span>
	    	<span class="paragraph">Estamos retornando uma lista vazia no nosso m&eacute;todo <code class="inlineCode">lista</code>. Seria muito mais interessante
retornar uma lista de verdade, por exemplo todas os produtos cadastrados no sistema. Para isso
vamos criar um DAO de produtos, para fazer a listagem:</span>
	    	<div class="java"><code class="java">
<span class="java4">public class </span><span class="java10">ProdutoDao </span><span class="java8">{<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; listaTodos</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return new </span><span class="java10">ArrayList&lt;Produto&gt;</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
}</span></code></div>
	    	<span class="paragraph">E no nosso ProdutosController podemos usar o dao pra fazer a listagem de produtos:</span>
	    	<div class="java"><code class="java">
<strong><span class="java16">@Resource<br /></strong>
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">private </span><span class="java10">ProdutoDao dao;<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; lista</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return </span><span class="java10">dao.listaTodos</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
}</span></code></div>
	    	<span class="paragraph">Podemos instanciar o ProdutoDao direto do controller, mas &eacute; muito mais interessante aproveitar
o gerenciamento de depend&ecirc;ncias que o VRaptor faz e receber o dao no construtor! E para que isso
seja poss&iacute;vel basta anotar o dao com @Component e o VRaptor vai se encarregar de criar o dao 
e injet&aacute;-lo na sua classe:</span>
	    	<div class="java"><code class="java">
<strong><span class="java16">@Component<br /></strong>
</span><span class="java4">public class </span><span class="java10">ProdutoDao </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
</span><span class="java8">}<br />
<br />
</span><span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">private </span><span class="java10">ProdutoDao dao;<br />
<br />
<strong>&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">ProdutosController</span><span class="java8">(</span><span class="java10">ProdutoDao dao</span><span class="java8">) {<br /></strong>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.dao = dao;<br /></strong>
<strong>&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br /></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; lista</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return </span><span class="java10">dao.listaTodos</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
}</span></code></div>
		

<h3 class="section">Formulário de adição: redirecionamento</h3>
	    	<span class="paragraph">Temos uma listagem de Produtos, mas ainda n&atilde;o temos como cadastr&aacute;-los. Vamos ent&atilde;o criar
um formul&aacute;rio de adi&ccedil;&atilde;o de produtos. Para n&atilde;o ter que acessar o jsp diretamente, vamos
criar uma l&oacute;gica vazia que s&oacute; redireciona pro jsp:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">form</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp; }<br />
}</span></code></div>
	    	<span class="paragraph">Podemos acessar o formul&aacute;rio pela URI <code class="inlineCode">/produtos/form</code>, e o formul&aacute;rio estar&aacute; em
<code class="inlineCode">/WEB-INF/jsp/produtos/form.jsp</code>:</span>
	    	<div class="xml"><code class="xml"><span class="textag">&lt;form</span>&nbsp;<span class="texattrib">action=</span><span class="texvalue">"&lt;c:url&nbsp;value="</span>/produtos/adiciona"<span class="textag">/&gt;</span><span class="texnormal">"&gt;<br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;Nome:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"text"</span>&nbsp;<span class="texattrib">name=</span><span class="texvalue">"produto.nome"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><span class="textag">&lt;br/&gt;</span><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;Descri&ccedil;&atilde;o:&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"text"</span>&nbsp;<span class="texattrib">name=</span><span class="texvalue">"produto.descricao"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><span class="textag">&lt;br/&gt;</span><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;Pre&ccedil;o:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"text"</span>&nbsp;<span class="texattrib">name=</span><span class="texvalue">"produto.preco"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><span class="textag">&lt;br/&gt;</span><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"submit"</span>&nbsp;<span class="texattrib">value=</span><span class="texvalue">"Salvar"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;/form&gt;</span></code></div>
	    	<span class="paragraph">O formul&aacute;rio vai salvar o Produto pela URI <code class="inlineCode">/produtos/adiciona</code>, ent&atilde;o precisamos criar
esse m&eacute;todo no nosso controller:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp; }<br />
}</span></code></div>
	    	<span class="paragraph">Repare nos nomes dos nossos inputs: <strong class="definition">produto.nome</strong>, <strong class="definition">produto.descricao</strong> e <strong class="definition">produto.preco</strong>.
Se recebermos um <code class="inlineCode">Produto</code> no m&eacute;todo <code class="inlineCode">adiciona</code> com o nome <strong class="definition">produto</strong>, o VRaptor vai popular
os seus campos <strong class="definition">nome</strong>, <strong class="definition">descricao</strong> e <strong class="definition">preco</strong>, usando os seus setters no Produto, 
com os valores digitados nos inputs. Inclusive o campo <strong class="definition">preco</strong>, vai ser convertido para Double
antes de ser setado no produto. Veja mais sobre isso no cap&iacute;tulo de converters.</span>
	    	<span class="paragraph">Ent&atilde;o, usando os nomes corretamente nos inputs do form, basta criar seu m&eacute;todo adiciona:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">dao.adiciona</span><span class="java8">(</span><span class="java10">produto</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">Geralmente depois de adicionar algo no sistema queremos voltar para a sua listagem, ou para o
formul&aacute;rio novamente. No nosso caso, queremos voltar pra listagem de produtos ao adicionar um
produto novo. Para isso existe um componente do VRaptor: o <strong class="definition"><code class="inlineCode">Result</code></strong>. Ele &eacute; respons&aacute;vel por
adicionar atributos na requisi&ccedil;&atilde;o, e por mudar a view a ser carregada. Se eu quiser uma inst&acirc;ncia
de Result, basta receb&ecirc;-lo no construtor:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">ProdutosController</span><span class="java8">(</span><span class="java10">ProdutoDao dao, Result result</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.dao = dao;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.result = result;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">E para redirecionar para a listagem basta usar o result:</span>
	    	<div class="java"><code class="java">
<span class="java10">result.use</span><span class="java8">(</span><span class="java10">Results.logic</span><span class="java8">())</span><span class="java10">.redirectTo</span><span class="java8">(</span><span class="java10">ProdutosController.</span><span class="java4">class</span><span class="java8">)</span><span class="java10">.lista</span><span class="java8">()</span><span class="java10">;</span></code></div>
	    	<span class="paragraph">Podemos ler esse c&oacute;digo como: <em class="italic">Como resultado, use uma l&oacute;gica, redirecionando para o
m&eacute;todo lista do ProdutosController</em>. A configura&ccedil;&atilde;o de redirecionamento &eacute; 100% java,
sem strings envolvidas! Fica expl&iacute;cito no seu c&oacute;digo que o resultado da sua l&oacute;gica n&atilde;o
&eacute; o padr&atilde;o, e qual resultado voc&ecirc; est&aacute; usando! Voc&ecirc; n&atilde;o precisa ficar se preocupando com
arquivos de configura&ccedil;&atilde;o! Mais ainda, se eu quiser mudar o nome do m&eacute;todo <code class="inlineCode">lista</code>, eu n&atilde;o preciso
ficar rodando o sistema inteiro procurando onde est&atilde;o redirecionando pra esse m&eacute;todo, basta
usar o refactor do eclipse, por exemplo, e tudo continua funcionando!</span>
	    	<span class="paragraph">Ent&atilde;o nosso m&eacute;todo <code class="inlineCode">adiciona</code> ficaria:</span>
	    	<div class="java"><code class="java">
<span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp; </span><span class="java10">dao.adiciona</span><span class="java8">(</span><span class="java10">produto</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; result.use</span><span class="java8">(</span><span class="java10">Results.logic</span><span class="java8">())</span><span class="java10">.redirectTo</span><span class="java8">(</span><span class="java10">ProdutosController.</span><span class="java4">class</span><span class="java8">)</span><span class="java10">.lista</span><span class="java8">()</span><span class="java10">;<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">Mais informa&ccedil;&otilde;es sobre o Result no cap&iacute;tulo Views e Ajax.</span>
		

<h3 class="section">Validação</h3>
	    	<span class="paragraph">N&atilde;o faz muito sentido adicionar um produto sem nome no sistema, nem um produto com pre&ccedil;o negativo.
Antes de adicionar o produto, precisamos verificar se &eacute; um produto v&aacute;lido, com nome e pre&ccedil;o positivo,
e caso n&atilde;o seja v&aacute;lido voltamos para o formul&aacute;rio com mensagens de erro. Para fazermos isso, podemos
usar um componente do VRaptor: o Validator. Voc&ecirc; pode receb&ecirc;-lo no construtor do seu Controller, e
us&aacute;-lo da seguinte maneira:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">ProdutosController</span><span class="java8">(</span><span class="java10">ProdutoDao dao, Result result, Validator validator</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.validator = validator;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {<br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">validator.checking</span><span class="java8">(</span><span class="java4">new </span><span class="java10">Validations</span><span class="java8">() {{<br /></strong>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">that</span><span class="java8">(</span><span class="java10">!produto.getNome</span><span class="java8">()</span><span class="java10">.isEmpty</span><span class="java8">()</span><span class="java10">, </span><span class="java5">&#34;produto.nome&#34;</span><span class="java10">, </span><span class="java5">&#34;nome.vazio&#34;</span><span class="java8">)</span><span class="java10">;<br /></strong>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that</span><span class="java8">(</span><span class="java10">produto.getPreco</span><span class="java8">() </span><span class="java10">&gt; </span><span class="java7">0</span><span class="java10">, </span><span class="java5">&#34;produto.preco&#34;</span><span class="java10">, </span><span class="java5">&#34;preco.invalido&#34;</span><span class="java8">)</span><span class="java10">;<br /></strong>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java8">}})</span><span class="java10">;<br /></strong>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; validator.onErrorUse</span><span class="java8">(</span><span class="java10">Results.page</span><span class="java8">())</span><span class="java10">.of</span><span class="java8">(</span><span class="java10">ProdutosController.</span><span class="java4">class</span><span class="java8">)</span><span class="java10">.form</span><span class="java8">()</span><span class="java10">;<br /></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dao.adiciona</span><span class="java8">(</span><span class="java10">produto</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result.use</span><span class="java8">(</span><span class="java10">Results.logic</span><span class="java8">())</span><span class="java10">.redirectTo</span><span class="java8">(</span><span class="java10">ProdutosController.</span><span class="java4">class</span><span class="java8">)</span><span class="java10">.lista</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">Podemos ler as valida&ccedil;&otilde;es da seguinte maneira: <em class="italic">Valide que o nome do produto n&atilde;o &eacute; vazio e
que o pre&ccedil;o do produto &eacute; maior que zero. Se acontecer um erro, use como resultado a p&aacute;gina
do form do ProdutosController</em>. Ou seja, se por exemplo o nome do produto for vazio, vai
ser adicionada a mensagem de erro para o campo "produto.nome", com a mensagem "nome.vazio"
internacionalizada. Se acontecer algum erro, o sistema vai voltar pra p&aacute;gina do formul&aacute;rio,
com os campos preenchidos e com mensagens de erro que podem ser acessadas da seguinte maneira:</span>
	    	<div class="xml"><code class="xml"><span class="textag">&lt;c:forEach</span>&nbsp;<span class="texattrib">var=</span><span class="texvalue">"error"</span>&nbsp;<span class="texattrib">items=</span><span class="texvalue">"${errors}"</span><span class="textag">&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;${error.category}&nbsp;&nbsp;${error.message}</span><span class="textag">&lt;br</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;/c:forEach&gt;</span></code></div>
	    	<span class="paragraph">Mais informa&ccedil;&otilde;es sobre o Validator no cap&iacute;tulo de Valida&ccedil;&otilde;es.</span>
	    	<span class="paragraph">Com o que foi visto at&eacute; agora voc&ecirc; j&aacute; consegue fazer 90% da sua aplica&ccedil;&atilde;o! As pr&oacute;ximas sess&otilde;es
desse tutorial mostram a solu&ccedil;&atilde;o para alguns problemas frequentes que est&atilde;o nos outros 10% da
sua aplica&ccedil;&atilde;o.</span>
		

<h3 class="section">Usando o Hibernate para guardar os Produtos</h3>
	    	<span class="paragraph">Agora vamos fazer uma implementa&ccedil;&atilde;o de verdade do ProdutoDao, usando o Hibernate para
persistir os produtos. Para isso nosso ProdutoDao precisa de uma Session. Como o VRaptor
usa inje&ccedil;&atilde;o de depend&ecirc;ncias, basta receber uma Session no construtor!</span>
	    	<div class="java"><code class="java">
<span class="java16">@Component<br />
</span><span class="java4">public class </span><span class="java10">ProdutoDao </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">private </span><span class="java10">Session session;<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">ProdutoDao</span><span class="java8">(</span><span class="java10">Session session</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.session = session;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">session.save</span><span class="java8">(</span><span class="java10">produto</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">Mas pera&iacute;, para o VRaptor precisa saber como criar essa Session, e eu n&atilde;o posso simplesmente
colocar um @Component na Session pois &eacute; uma classe do Hibernate! Para isso existe a interface
ComponentFactory, que voc&ecirc; pode usar pra criar uma Session. Mais informa&ccedil;&otilde;es de como fazer
ComponentFactories no cap&iacute;tulo de Componentes. Voc&ecirc; pode ainda usar os ComponentFactories que
j&aacute; est&atilde;o dispon&iacute;veis para isso no VRaptor, como mostra o cap&iacute;tulo de Utils.</span>
		

<h3 class="section">Controlando transações: Interceptors</h3>
	    	<span class="paragraph">Muitas vezes queremos interceptar todas as requisi&ccedil;&otilde;es (ou uma parte delas) e executar alguma
l&oacute;gica, como acontece com o controle de transa&ccedil;&otilde;es. Para isso existem os Interceptor's no
VRaptor. Saiba mais sobre eles no cap&iacute;tulo de Interceptors. Existe um TransactionInterceptor
j&aacute; implementado no VRaptor, saiba como us&aacute;-lo no cap&iacute;tulo de Utils.</span>
		

<h3 class="section">Carrinho de compras: Componentes na sessão</h3>
	    	<span class="paragraph">Se quisermos criar um carrinho de compras no nosso sistema, precisamos de alguma forma manter os
itens do carrinho na Sess&atilde;o do usu&aacute;rio. Para fazer isso, podemos criar um componente que est&aacute; no
escopo de sess&atilde;o, ou seja, ele vai ser &uacute;nico na sess&atilde;o do usu&aacute;rio. Para isso basta criar um
componente anotado com @SessionScoped:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Component<br />
@SessionScoped<br />
</span><span class="java4">public class </span><span class="java10">CarrinhoDeCompras </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">private </span><span class="java10">List&lt;Produto&gt; itens = </span><span class="java4">new </span><span class="java10">ArrayList&lt;Produto&gt;</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; getTodosOsItens</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return </span><span class="java10">itens;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adicionaItem</span><span class="java8">(</span><span class="java10">Produto item</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">itens.add</span><span class="java8">(</span><span class="java10">item</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">Como esse carrinho de compras &eacute; um componente, podemos receb&ecirc;-lo no construtor do controller que
vai cuidar do carrinho de compras:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Resource<br />
</span><span class="java4">public class </span><span class="java10">CarrinhoController </span><span class="java8">{<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">CarrinhoController</span><span class="java8">(</span><span class="java10">CarrinhoDeCompras carrinho</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">this</span><span class="java10">.carrinho = carrinho;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java10">carrinho.adicionaItem</span><span class="java8">(</span><span class="java10">produto</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; listaItens</span><span class="java8">() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return </span><span class="java10">carrinho.getTodosOsItens</span><span class="java8">()</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
}</span></code></div>
	    	<span class="paragraph">Al&eacute;m do escopo de sess&atilde;o existe o escopo de Aplica&ccedil;&atilde;o com a anota&ccedil;&atilde;o @ApplicationScoped.
Os componentes anotados com @ApplicationScoped ser&atilde;o criados apenas uma vez em toda a aplica&ccedil;&atilde;o.</span>
		

<h3 class="section">Um pouco de REST</h3>
	    	<span class="paragraph">Seguindo a id&eacute;ia REST de que <code class="inlineCode">URI</code>s devem identificar recursos na rede para ent&atilde;o podermos
fazer valer as diversas vantagens estruturais que o protocolo HTTP nos proporciona, 
note o qu&atilde;o simples fica mapear os diversos m&eacute;todos HTTP para a mesma URI, e com
isso invocar diferentes m&eacute;todos, por exemplo queremos usar as seguintes URIs para o
cadastro de produtos:</span>
	    	<div class="java"><code class="java">GET&nbsp;/produtos&nbsp;-&nbsp;lista&nbsp;todos&nbsp;os&nbsp;produtos<br />
POST&nbsp;/produtos&nbsp;-&nbsp;adiciona&nbsp;um&nbsp;produto<br />
GET&nbsp;/produtos/{id}&nbsp;-&nbsp;visualiza&nbsp;o&nbsp;produto&nbsp;com&nbsp;o&nbsp;id&nbsp;passado<br />
PUT&nbsp;/produtos/{id}&nbsp;-&nbsp;atualiza&nbsp;as&nbsp;informa&ccedil;&otilde;es&nbsp;do&nbsp;produto&nbsp;com&nbsp;o&nbsp;id&nbsp;passado<br />
DELETE&nbsp;/produtos/{id}&nbsp;-&nbsp;remove&nbsp;o&nbsp;produto&nbsp;com&nbsp;o&nbsp;id&nbsp;passado</code></div>
	    	<span class="paragraph">Para criar esse comportamento REST no VRaptor podemos usar as anota&ccedil;&otilde;es @Path
- que muda qual &eacute; a uri que vai acessar o determinado m&eacute;todo, e as anota&ccedil;&otilde;es
com os nomes dos m&eacute;todos HTTP @Get, @Post, @Delete, @Put, que indicam que o m&eacute;todo
anotado s&oacute; pode ser acessado se a requisi&ccedil;&atilde;o estiver com o m&eacute;todo HTTP indicado.
Ent&atilde;o uma vers&atilde;o REST do nosso ProdutosController seria:</span>
	    	<div class="java"><code class="java">
<span class="java4">public class </span><span class="java10">ProdutosController </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">//...<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Get<br />
&nbsp;&nbsp;&nbsp; @Path</span><span class="java8">(</span><span class="java5">&#34;/produtos&#34;</span><span class="java8">)<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">List&lt;Produto&gt; lista</span><span class="java8">() {</span><span class="java10">...</span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Post<br />
&nbsp;&nbsp;&nbsp; @Path</span><span class="java8">(</span><span class="java5">&#34;/produtos&#34;</span><span class="java8">)<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">adiciona</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {</span><span class="java10">...</span><span class="java8">}<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Get<br />
&nbsp;&nbsp;&nbsp; @Path</span><span class="java8">(</span><span class="java5">&#34;/produtos/{produto.id}&#34;</span><span class="java8">)<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">visualiza</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {</span><span class="java10">...</span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Put<br />
&nbsp;&nbsp;&nbsp; @Path</span><span class="java8">(</span><span class="java5">&#34;/produtos/{produto.id}&#34;</span><span class="java8">)<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">atualiza</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {</span><span class="java10">...</span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; </span><span class="java16">@Delete<br />
&nbsp;&nbsp;&nbsp; @Path</span><span class="java8">(</span><span class="java5">&#34;/produtos/{produto.id}&#34;</span><span class="java8">)<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">remove</span><span class="java8">(</span><span class="java10">Produto produto</span><span class="java8">) {</span><span class="java10">...</span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; <br />
}</span></code></div>
	    	<span class="paragraph">Note que podemos receber par&acirc;metros nas URIs. Por exemplo se chamarmos a URI
<strong class="definition">GET /produtos/5</strong>, o m&eacute;todo visualiza ser&aacute; invocado, e o par&acirc;metro produto vai
ter o id populado com 5.</span>
	    	<span class="paragraph">Mais informa&ccedil;&otilde;es sobre isso no cap&iacute;tulo de Resources-REST.</span>
		

<h3 class="section">Arquivo de mensagens</h3>
	    	<span class="paragraph">Internacionaliza&ccedil;&atilde;o (<em class="italic">i18n</em>) &eacute; um recurso poderoso, e que est&aacute; presente em quase todos os frameworks 
Web hoje em dia. E n&atilde;o &eacute; diferente no VRaptor3. Com i18n podemos fazer com que nossa aplica&ccedil;&atilde;o suporte
v&aacute;rias l&iacute;nguas (franc&ecirc;s, portugu&ecirc;s, espanhol, ingl&ecirc;s, etc) de uma maneira que n&atilde;o nos cause muito esfor&ccedil;o, 
bastando apenas fazermos a tradu&ccedil;&atilde;o das mensagens da nossa aplica&ccedil;&atilde;o. </span>
	    	<span class="paragraph">Para isso &eacute; s&oacute; criarmos um arquivo chamado <em class="italic">messages.properties</em> e disponibiliz&aacute;-lo no classpath da 
nossa aplica&ccedil;&atilde;o (<code class="inlineCode">WEB-INF/classes</code>). O conte&uacute;do desse arquivo s&atilde;o v&aacute;rias linhas compostas por um conjunto 
de chaves/valor, como por exemplo:</span>
	    	<div class="java"><code class="java">campo.nomeUsuario&nbsp;<span class="texvalue">=&nbsp;Nome&nbsp;de&nbsp;Usu&aacute;rio<br /></span>
campo.senha&nbsp;<span class="texvalue">=&nbsp;Senha</span></code></div>
	    	<span class="paragraph">At&eacute; ent&atilde;o est&aacute; f&aacute;cil, mas e se quisermos criar esses arquivos para v&aacute;rias l&iacute;nguas, como por exemplo, ingl&ecirc;s?
Simples, basta criarmos um outro arquivo properties chamado <code class="inlineCode">messages_en.properties</code>. Repare no sufixo 
<em class="italic">_en</em> no nome do arquivo. Isso indica que quando o usu&aacute;rio acessar sua aplica&ccedil;&atilde;o atrav&eacute;s de uma m&aacute;quina 
configurada com locale em ingl&ecirc;s as mensagens desse arquivo ser&atilde;o utilizadas. O conte&uacute;do desse arquivo ent&atilde;o ficaria:</span>
	    	<div class="java"><code class="java">campo.nomeUsuario&nbsp;<span class="texvalue">=&nbsp;Username<br /></span>
campo.senha&nbsp;<span class="texvalue">=&nbsp;Password</span></code></div>
	    	<span class="paragraph">Repare que as chaves s&atilde;o mantidas, mudando apenas o valor para a l&iacute;ngua escolhida.</span>
	    	<span class="paragraph">Para usar essas mensagens em seus arquivos JSP, voc&ecirc; pode utilizar a JSTL. Dessa forma, o c&oacute;digo ficaria:</span>
	    	<div class="xml"><code class="xml">&lt;%@&nbsp;taglib&nbsp;uri="http://java.sun.com/jsp/jstl/fmt"&nbsp;prefix="fmt"&nbsp;%&gt;<span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;html&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;body&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;fmt:message</span>&nbsp;<span class="texattrib">key=</span><span class="texvalue">"campo.usuario"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal">&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">name=</span><span class="texvalue">"usuario.nomeUsuario"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;br</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;fmt:message</span>&nbsp;<span class="texattrib">key=</span><span class="texvalue">"campo.senha"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal">&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"password"</span>&nbsp;<span class="texattrib">name=</span><span class="texvalue">"usuario.senha"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;input</span>&nbsp;<span class="texattrib">type=</span><span class="texvalue">"submit"</span>&nbsp;<span class="textag">/&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="textag">&lt;/body&gt;</span><span class="texnormal"><br /></span>
<span class="texnormal"></span><span class="textag">&lt;/html&gt;</span></code></div>
		

</div><!-- content -->
            
        </div><!-- content cnt -->
    </div><!-- content wrap-->
    
<%@include file="/footer.jsp" %>