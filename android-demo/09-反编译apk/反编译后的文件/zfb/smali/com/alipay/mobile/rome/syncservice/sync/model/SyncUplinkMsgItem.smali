.class public Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;
.super Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;
.source "SyncUplinkMsgItem.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;-><init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    if-eqz v2, :cond_3

    .line 63
    check-cast p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 64
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    iget-wide v4, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 66
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    iget-wide v4, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 67
    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    iget v3, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x275

    .line 83
    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    add-int/2addr v0, v1

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "[msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",sendImmediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, ",needCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",sendStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
