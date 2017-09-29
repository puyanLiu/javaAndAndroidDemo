.class Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;
.super Ljava/lang/Object;
.source "H5PopMenu.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/web/H5ImageLoader$ImageListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->b:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->b:Ljava/lang/String;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method
