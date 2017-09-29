.class public Lcom/alipay/mobile/rome/syncservice/sync/model/b;
.super Ljava/lang/Object;
.source "SyncMsgHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobile/rome/syncservice/sync/model/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/model/b;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;
    .locals 4

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->pushData:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    goto :goto_0
.end method

.method public static b(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, "init"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    .line 69
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->commandData:Ljava/lang/String;

    .line 73
    :goto_1
    return-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string/jumbo v1, "fullUpdate"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/model/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "modelToSyncCmd: [ pf unknown ] [ pf="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_1
.end method
