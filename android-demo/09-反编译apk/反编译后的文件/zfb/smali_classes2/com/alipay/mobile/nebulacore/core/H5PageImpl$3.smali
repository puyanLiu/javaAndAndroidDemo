.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "H5PageImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 173
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)V

    .line 176
    const-string/jumbo v0, "H5PageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSingleTapUp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method
