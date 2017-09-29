.class public Lcom/alipay/kabaoprod/core/model/model/RemindInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "RemindInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public gmtCreate:Ljava/lang/String;

.field public gmtModified:Ljava/lang/String;

.field public id:J

.field public passId:Ljava/lang/String;

.field public remindSet:J

.field public remindStatus:Ljava/lang/String;

.field public remindSupportTime:Ljava/lang/String;

.field public remindSwitch:Ljava/lang/String;

.field public remindTime:Ljava/lang/String;

.field public sysdate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 43
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSwitch:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindStatus:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->gmtModified:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->id:J

    return-wide v0
.end method

.method public getPassId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->passId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindSet()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSet:J

    return-wide v0
.end method

.method public getRemindStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindSupportTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSupportTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindSwitch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSysdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->sysdate:Ljava/lang/String;

    return-object v0
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->gmtCreate:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setGmtModified(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->gmtModified:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(J)V
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->id:J

    .line 23
    return-void
.end method

.method public setPassId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->passId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setRemindSet(J)V
    .locals 0

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSet:J

    .line 59
    return-void
.end method

.method public setRemindStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindStatus:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setRemindSupportTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSupportTime:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setRemindSwitch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindSwitch:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRemindTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->remindTime:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSysdate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->sysdate:Ljava/lang/String;

    .line 95
    return-void
.end method
