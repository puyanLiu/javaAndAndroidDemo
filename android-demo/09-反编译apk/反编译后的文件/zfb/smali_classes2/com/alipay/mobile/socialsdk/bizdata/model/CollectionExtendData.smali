.class public Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;
.super Ljava/lang/Object;
.source "CollectionExtendData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:I

.field private bizMemo:Ljava/lang/String;

.field private bizRemind:Ljava/lang/String;

.field private msgIndex:Ljava/lang/String;

.field private templateCode:Ljava/lang/String;

.field private templateData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->action:I

    return v0
.end method

.method public getBizMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->bizMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getBizRemind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->bizRemind:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->msgIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->templateCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->templateData:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->action:I

    .line 46
    return-void
.end method

.method public setBizMemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->bizMemo:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setBizRemind(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->bizRemind:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMsgIndex(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->msgIndex:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTemplateCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->templateCode:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTemplateData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->templateData:Ljava/lang/String;

    .line 62
    return-void
.end method
