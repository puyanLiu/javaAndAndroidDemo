.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
.super Ljava/lang/Object;
.source "PassListReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isFromMsg:Z

.field public needPaging:Z

.field public pageSize:I

.field public passCategory:Ljava/lang/String;

.field public rowSize:I

.field public timeStatus:Ljava/lang/String;

.field public updateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->pageSize:I

    return v0
.end method

.method public getPassCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->passCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->rowSize:I

    return v0
.end method

.method public getTimeStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->timeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->updateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedPaging()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->needPaging:Z

    return v0
.end method

.method public setNeedPaging(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->needPaging:Z

    .line 58
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->pageSize:I

    .line 84
    return-void
.end method

.method public setPassCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->passCategory:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setRowSize(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->rowSize:I

    .line 71
    return-void
.end method

.method public setTimeStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->timeStatus:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUpdateFlag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;->updateFlag:Ljava/lang/String;

    .line 97
    return-void
.end method
