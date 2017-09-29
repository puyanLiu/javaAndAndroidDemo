.class public Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
.source "GroupChatMsgObj.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/GroupChatMsgDatabaseDaoImpl;
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x36d850a4ddf9ad05L


# instance fields
.field public hintUsers:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public senderId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;-><init>(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V

    .line 30
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->senderId:Ljava/lang/String;

    .line 31
    return-void
.end method
