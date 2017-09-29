.class final Lcom/alipay/android/phone/businesscommon/advertisement/c/d;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;->b:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void
.end method
