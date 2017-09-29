.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;
.super Ljava/lang/Object;
.source "RemindNotifyReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public passCategory:Ljava/lang/String;

.field public passId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;->passCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPassId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;->passId:Ljava/lang/String;

    return-object v0
.end method

.method public setPassCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;->passCategory:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPassId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;->passId:Ljava/lang/String;

    .line 26
    return-void
.end method
