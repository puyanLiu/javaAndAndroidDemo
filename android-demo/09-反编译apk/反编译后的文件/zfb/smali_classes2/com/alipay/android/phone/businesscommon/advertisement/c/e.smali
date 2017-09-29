.class final Lcom/alipay/android/phone/businesscommon/advertisement/c/e;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->c:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method
