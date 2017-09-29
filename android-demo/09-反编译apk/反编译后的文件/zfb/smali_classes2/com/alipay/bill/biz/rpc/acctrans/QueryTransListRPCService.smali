.class public interface abstract Lcom/alipay/bill/biz/rpc/acctrans/QueryTransListRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getTransList(Lcom/alipay/bill/biz/shared/acctrans/model/QueryTransListReq;)Lcom/alipay/bill/biz/shared/acctrans/model/QueryTransListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getTransList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
