.class public Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;
.super Ljava/lang/Object;
.source "H5PageViewHolder.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field private b:Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

.field private c:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

.field private d:Landroid/view/View;

.field private e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

.field private f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getH5FontBar()Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->c:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    return-object v0
.end method

.method public getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public getH5ToolBar()Lcom/alipay/mobile/nebulacore/view/H5ToolBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->b:Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    return-object v0
.end method

.method public getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    return-object v0
.end method

.method public getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    return-object v0
.end method

.method public getH5WebContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->g:Landroid/view/View;

    return-object v0
.end method

.method public getToolBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->d:Landroid/view/View;

    return-object v0
.end method

.method public setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->c:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    .line 50
    return-void
.end method

.method public setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 34
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 90
    return-void
.end method

.method public setH5ToolBar(Lcom/alipay/mobile/nebulacore/view/H5ToolBar;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->b:Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    .line 42
    return-void
.end method

.method public setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .line 74
    return-void
.end method

.method public setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 66
    return-void
.end method

.method public setH5WebContent(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->g:Landroid/view/View;

    .line 82
    return-void
.end method

.method public setToolBarView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->d:Landroid/view/View;

    .line 58
    return-void
.end method
