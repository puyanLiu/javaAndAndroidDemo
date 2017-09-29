.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    const/4 v0, 0x0

    return v0
.end method
