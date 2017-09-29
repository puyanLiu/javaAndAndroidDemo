.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->b:Landroid/graphics/Bitmap;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->ICON:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->a:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    return-void
.end method
