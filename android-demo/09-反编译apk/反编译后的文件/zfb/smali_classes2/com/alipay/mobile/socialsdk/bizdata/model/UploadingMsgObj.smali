.class public Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;
.super Ljava/lang/Object;
.source "UploadingMsgObj.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/UploadingMsgDaoImpl;
.end annotation


# instance fields
.field public clientMsgId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userType:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userId:Ljava/lang/String;

    .line 33
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->createTime:J

    .line 34
    return-void
.end method
