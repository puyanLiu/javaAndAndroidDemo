.class public final Lcom/alipay/android/phone/a/c/r;
.super Ljava/lang/Object;
.source "O2OItemView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private b:Landroid/app/Activity;

.field private c:[I

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/r;->c:[I

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/r;->d:[I

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/a/c/r;->b:Landroid/app/Activity;

    .line 31
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/r;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/alipay/android/phone/a/c/r;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/r;->c:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v3

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/r;->c:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v4

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/r;->d:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v3

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/r;->d:[I

    iget-object v1, p0, Lcom/alipay/android/phone/a/c/r;->d:[I

    aget v1, v1, v3

    aput v1, v0, v4

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/a/c/r;->e:I

    .line 42
    return-void
.end method
