.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;
.super Ljava/lang/Object;
.source "AdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private final synthetic d:Landroid/app/Activity;

.field private final synthetic e:I

.field private final synthetic f:Landroid/view/View;

.field private final synthetic g:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/view/ViewGroup;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Landroid/app/Activity;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->d:Landroid/app/Activity;

    iput p5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->e:I

    iput-object p6, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->g:Landroid/view/View;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 370
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->b:Landroid/view/ViewGroup;

    .line 371
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/app/Activity;)I

    move-result v0

    .line 377
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    iget v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->e:I

    .line 377
    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->d:Landroid/app/Activity;

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    invoke-static {v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v2

    add-int/2addr v0, v2

    .line 380
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 382
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 383
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->d:Landroid/app/Activity;

    .line 382
    invoke-direct {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 384
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->f:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 391
    return-void
.end method
