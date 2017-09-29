.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/taobaonick/TaobaoNickManagerFacade;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_BIND_PHONE:Ljava/lang/String; = "614"

.field public static final CODE_NICKNAME_CANT_SET:Ljava/lang/String; = "613"

.field public static final CODE_UNSET_NICKNAME:Ljava/lang/String; = "612"


# virtual methods
.method public abstract queryTaobaoNick()Lcom/alipay/mobilesecurity/core/model/taobaonick/TaobaoNickQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.taobaonick.queryTaobaoNick"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract queryTaobaoNickH5Url(Lcom/alipay/mobilesecurity/core/model/taobaonick/TaobaoNickH5UrlQueryReq;)Lcom/alipay/mobilesecurity/core/model/taobaonick/TaobaoNickH5UrlQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.taobaonick.queryTaobaoNickH5Url"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
