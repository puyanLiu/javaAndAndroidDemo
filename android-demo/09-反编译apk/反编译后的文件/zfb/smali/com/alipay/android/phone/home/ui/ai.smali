.class final Lcom/alipay/android/phone/home/ui/ai;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/ah;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/ah;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ai;->a:Lcom/alipay/android/phone/home/ui/ah;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ai;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ai;->a:Lcom/alipay/android/phone/home/ui/ah;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ah;->a(Lcom/alipay/android/phone/home/ui/ah;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ai;->a:Lcom/alipay/android/phone/home/ui/ah;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ah;->a(Lcom/alipay/android/phone/home/ui/ah;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ai;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 536
    :cond_0
    return-void
.end method
