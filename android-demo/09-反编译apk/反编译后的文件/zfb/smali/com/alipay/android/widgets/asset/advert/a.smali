.class final Lcom/alipay/android/widgets/asset/advert/a;
.super Ljava/lang/Object;
.source "AdvertProcessor.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->e(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/widgets/asset/listener/AdvertListener;->a()V

    .line 56
    :cond_0
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->e(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/widgets/asset/listener/AdvertListener;->a()V

    .line 48
    :cond_2
    return-void

    .line 34
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 35
    if-eqz v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-virtual {v2, v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/a;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V

    goto :goto_0
.end method
