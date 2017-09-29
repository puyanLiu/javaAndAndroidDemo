.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/web/H5ImageLoader$ImageListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;)V

    .line 575
    :cond_0
    return-void
.end method
