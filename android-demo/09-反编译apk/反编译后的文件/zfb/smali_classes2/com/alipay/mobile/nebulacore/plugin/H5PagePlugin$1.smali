.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->f:Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->d:Ljava/lang/String;

    .line 525
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->f:Ljava/lang/String;

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method
