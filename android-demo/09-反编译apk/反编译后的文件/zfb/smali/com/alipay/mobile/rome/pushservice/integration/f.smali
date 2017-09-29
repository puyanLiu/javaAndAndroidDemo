.class public Lcom/alipay/mobile/rome/pushservice/integration/f;
.super Ljava/lang/Object;
.source "PushNoticeDisplay.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static f:J

.field private static h:Landroid/util/DisplayMetrics;

.field private static i:I

.field private static j:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/rome/pushservice/integration/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    .line 932
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    .line 1074
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;-><init>()V

    const-string/jumbo v0, "push_show_title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "push_show_text"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "push_show_sound"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "push_show_badge"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "push_t_msg_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "push_msg_key"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "push_msg_data"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "push_show_ext"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getNoticeInfo msgShowTitle="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgShowText="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgTMsgId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgBadge="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgNoticeExt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgShowSound="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/i;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/i;-><init>()V

    invoke-static {v8}, Lcom/alipay/mobile/rome/pushservice/integration/i;->a(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a(Lcom/alipay/mobile/rome/pushservice/integration/h;)V

    iput-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 85
    return-void
.end method

.method private a()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 289
    iget v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 292
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPushChatDefaultIcon app-IconId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".R$drawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 299
    const-string/jumbo v1, "push_chat_default"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 303
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPushChatDefaultIcon appIconPushChatDefault="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPushChatDefaultIcon: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/rome/pushservice/integration/j;I)I
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x4

    .line 629
    .line 631
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMergeMsgCount mtId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 638
    new-instance v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/pushservice/integration/b/b;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->j:J

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/b;)J

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveMergeMsg done with noticeId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mTemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/b;

    move-result-object v1

    .line 645
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 646
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 647
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMergeMsgCount mergeMsgList.size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v3, v2

    .line 655
    :goto_0
    if-lt v3, v1, :cond_4

    move v0, v1

    .line 671
    :goto_1
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getMergeMsgCount mergeCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 673
    const-string/jumbo v3, ", noticeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_3
    return v0

    .line 656
    :cond_4
    const/4 v0, 0x5

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    const/4 v5, 0x5

    sget-object v6, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getMergeMsgCount i="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", nId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 658
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v5, v6, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 667
    const-string/jumbo v3, "getMergeMsgCount queryMsgByMergeId is Exception."

    .line 666
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/rome/pushservice/integration/j;ILjava/util/List;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/rome/pushservice/integration/j;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 681
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 682
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 683
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    const/4 v1, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getBizMergeMsgCount mBId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mSBId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 688
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v5

    .line 689
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    .line 694
    :try_start_0
    invoke-virtual {v5, v4, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 695
    const/4 v1, 0x0

    .line 697
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 709
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    const/4 v0, 0x1

    .line 746
    :goto_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizMergeMsgCount bizMergeType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 748
    const-string/jumbo v4, ", noticeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_1
    return v0

    .line 697
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 698
    invoke-virtual {v5, v4, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 699
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v1

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .line 699
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 700
    if-eqz v1, :cond_3

    .line 701
    iget-object v9, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    .line 704
    iget v1, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_2

    .line 714
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 715
    const-string/jumbo v3, "getMergeMsgCount queryMsgByBizId is Exception."

    .line 714
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 717
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 719
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    .line 722
    :try_start_2
    invoke-virtual {v5, v4, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 723
    const/4 v0, 0x0

    .line 724
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 732
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 724
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 725
    if-eqz v0, :cond_6

    .line 726
    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    .line 729
    iget v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_3

    .line 737
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 738
    const-string/jumbo v3, "getMergeMsgCount queryMsgByBizIdSubBizId is Exception."

    .line 737
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    .line 742
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;ILcom/alipay/mobile/personalbase/model/SocialPushInfo;)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/alipay/mobile/personalbase/model/SocialPushInfo;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 934
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 935
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 934
    invoke-direct {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 937
    const/4 v5, 0x0

    .line 944
    const-string/jumbo v1, ""

    .line 947
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 948
    const-string/jumbo v0, "1"

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2"

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 949
    :cond_0
    const-string/jumbo v0, ""

    .line 950
    const/16 v2, 0x78

    .line 951
    if-eqz p3, :cond_1

    .line 952
    iget-object v1, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->titleName:Ljava/lang/String;

    .line 953
    iget-object v0, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headUrl:Ljava/lang/String;

    .line 954
    iget v2, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headSize:I

    .line 956
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 957
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v1

    .line 961
    :goto_0
    if-nez v0, :cond_c

    .line 962
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 966
    :goto_1
    if-ne p2, v4, :cond_4

    .line 967
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    .line 968
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 971
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 972
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->f()Ljava/lang/String;

    move-result-object v5

    .line 973
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->d()Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    .line 1003
    :goto_3
    if-ne p2, v4, :cond_9

    .line 1004
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1014
    :goto_4
    sget v6, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    if-nez v6, :cond_b

    .line 1015
    sput v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    .line 1016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    :goto_5
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1022
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1023
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1025
    const v2, -0xff0100

    const/16 v3, 0x12c

    const/16 v5, 0x3e8

    invoke-virtual {v0, v2, v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1028
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 1029
    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1032
    :cond_2
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1036
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "android.app.MiuiNotification"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "extraNotification"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1038
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1039
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setMessageCount"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1040
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_6
    return-object v0

    .line 969
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "$"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 974
    :cond_4
    if-ne p2, v9, :cond_7

    .line 975
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->j()Ljava/lang/String;

    move-result-object v0

    .line 978
    const-string/jumbo v1, "$0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    :goto_7
    iget-object v5, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v5

    .line 988
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    .line 989
    goto/16 :goto_3

    .line 984
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    goto :goto_7

    .line 991
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    goto/16 :goto_3

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v5

    .line 995
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    .line 1000
    :goto_8
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v4

    move-object v10, v0

    move-object v0, v5

    move-object v5, v10

    goto/16 :goto_3

    .line 998
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1005
    :cond_9
    if-ne p2, v9, :cond_a

    .line 1006
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1007
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 1009
    :cond_a
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1010
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 1018
    :cond_b
    sput v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_6

    :cond_c
    move-object v6, v0

    goto/16 :goto_1

    :cond_d
    move-object v2, v1

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 265
    .line 267
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 268
    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    const-string/jumbo v1, "Push_Notice_User_Icon"

    const-string/jumbo v3, "Push_Notice_User_Icon_Default"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 284
    :goto_1
    return-object v0

    .line 272
    :catch_0
    move-exception v1

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v3, "prepareNoticeBizIcon cache error"

    invoke-static {v4, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 282
    const-string/jumbo v3, "Push_Notice_User_Icon"

    const-string/jumbo v4, "Push_Notice_User_Icon_Default"

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    .line 284
    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 208
    .line 211
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 212
    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    const-string/jumbo v1, "Push_Notice_User_Icon"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 221
    :goto_0
    if-eqz v2, :cond_1

    .line 256
    :goto_1
    return-object v2

    .line 216
    :catch_0
    move-exception v1

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "prepareNoticeBizIcon cache error"

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 226
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;

    invoke-direct {v4, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->queryImageFor(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;

    move-result-object v4

    .line 228
    iget-boolean v5, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->success:Z

    if-eqz v5, :cond_4

    .line 229
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    if-nez v5, :cond_2

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sput-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    :cond_2
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    .line 231
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 233
    iget v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->width:I

    if-eqz v1, :cond_3

    .line 234
    iget p2, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->width:I

    .line 236
    :cond_3
    int-to-float v1, p2

    float-to-double v5, v1

    const-wide/high16 v7, 0x4064000000000000L    # 160.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x407e000000000000L    # 480.0

    mul-double/2addr v5, v7

    double-to-int v1, v5

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 237
    iget-object v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 240
    const-string/jumbo v2, "Push_Notice_User_Icon"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 256
    goto/16 :goto_1

    .line 244
    :cond_4
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/pushservice/integration/g;-><init>(Lcom/alipay/mobile/rome/pushservice/integration/f;)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1505
    new-instance v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/pushservice/integration/b/a;-><init>()V

    .line 1507
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    .line 1508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->h:J

    .line 1510
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    .line 1511
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    .line 1512
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    .line 1513
    const/4 v0, 0x1

    iput v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    .line 1515
    if-eqz p3, :cond_1

    .line 1518
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1519
    const/4 v0, 0x0

    .line 1520
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1527
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    invoke-virtual {v0, v2, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/a;Ljava/lang/String;)J

    .line 1536
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1537
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveBizMsg done with noticeId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1538
    const-string/jumbo v3, ", msgId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mBizId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mSubBizId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", bMsgCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1537
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_2
    return-void

    .line 1520
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 1521
    if-eqz v0, :cond_0

    .line 1522
    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    .line 1525
    iget v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "merge subBizId error[ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Landroid/app/Notification;)V
    .locals 3

    .prologue
    .line 598
    const/4 v1, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;->isOpenVibration()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 603
    :goto_1
    return-void

    .line 602
    :cond_0
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1543
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 1549
    :goto_0
    if-eqz v1, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 1551
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1550
    check-cast v0, Landroid/app/NotificationManager;

    .line 1552
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1554
    :cond_0
    return-void

    .line 1547
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 1250
    const/4 v1, 0x0

    .line 1253
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1254
    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkSoundRes sound:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1259
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1261
    if-nez v1, :cond_3

    .line 1263
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "checkSoundRes sound file is not exist."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1282
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1290
    :cond_2
    :goto_1
    return v0

    .line 1268
    :cond_3
    const/4 v2, 0x1

    .line 1269
    const/4 v3, 0x4

    :try_start_2
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1270
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "checkSoundRes sound file is exist."

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 1276
    const-string/jumbo v4, "Exception! checkSoundRes sound file is not exist."

    .line 1275
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1280
    if-eqz v1, :cond_2

    .line 1282
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1283
    :catch_1
    move-exception v1

    .line 1284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1279
    :catchall_0
    move-exception v0

    .line 1280
    if-eqz v1, :cond_4

    .line 1282
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1288
    :cond_4
    :goto_2
    throw v0

    .line 1283
    :catch_2
    move-exception v1

    .line 1284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1283
    :catch_3
    move-exception v1

    .line 1284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 758
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipay.pushservice.action.DELETE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string/jumbo v1, "push_key"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string/jumbo v1, "push_noticeId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string/jumbo v1, "push_type"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    const-string/jumbo v1, "push_tMsgId"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v2, 0x0

    .line 769
    const/high16 v3, 0x40000000    # 2.0f

    .line 768
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 771
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDeleteIntent 1 noticeId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 773
    const-string/jumbo v3, ", msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    return-object v0
.end method

.method private b(Landroid/app/Notification;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    .line 606
    const/4 v1, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;->isOpenSound()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 626
    :goto_1
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 611
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 613
    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getSoundProp sound:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v4

    :goto_2
    array-length v1, v5

    if-lt v3, v1, :cond_3

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSoundProp mSndFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSndGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->e()Landroid/net/Uri;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_8

    .line 617
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 613
    :cond_3
    aget-object v1, v5, v3

    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    aget-object v1, v5, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v1, v5, v3

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getSoundProp i="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ", key="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ", value="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v8, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v6, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v0, v1

    :cond_5
    const-string/jumbo v6, "group"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto/16 :goto_2

    :cond_6
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getSoundProp failed. i="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v1, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v1, v2

    goto :goto_3

    .line 620
    :cond_8
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_1

    .line 624
    :cond_9
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private static b()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    .line 330
    const/4 v2, 0x1

    .line 332
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    .line 333
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 333
    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 335
    const-string/jumbo v3, "push_rich_adapter"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 339
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "richSupport curModel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    const-string/jumbo v5, ", richAdapterList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-static {v7, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "richSupport richAdapterList size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-static {v7, v0, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_4

    :cond_2
    move v0, v2

    .line 360
    :goto_1
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "richSupport ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_3
    return v0

    .line 351
    :cond_4
    aget-object v5, v3, v0

    .line 353
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    .line 355
    goto :goto_1

    .line 351
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 1054
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_2

    .line 1057
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1060
    :goto_0
    if-eqz v0, :cond_1

    .line 1061
    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 1063
    :goto_1
    if-eqz v0, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryPushInfoForSocial(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1071
    :goto_2
    return-object v0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizSocialPushInfo Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1071
    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 1076
    sget v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 1078
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getNoticeIcon app-IconId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".R$drawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1085
    const-string/jumbo v1, "appicon_push"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1088
    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 1089
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNoticeIcon appIconPush="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :cond_1
    :goto_0
    sget v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    return v0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNoticeIcon: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1217
    .line 1219
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1221
    :try_start_0
    const-string/jumbo v1, ""

    .line 1223
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1224
    if-lez v2, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1228
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 1232
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1234
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1238
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_4

    .line 1246
    :cond_3
    :goto_0
    return-object v0

    .line 1241
    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->f()Ljava/lang/String;

    move-result-object v0

    .line 1561
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1568
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1569
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    const-string/jumbo v2, "mpaas.badge.action.add"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    const-string/jumbo v2, "badgeCount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1572
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1573
    return-void

    .line 1565
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 22

    .prologue
    .line 385
    const-class v6, Lcom/alipay/mobile/rome/pushservice/integration/k;

    monitor-enter v6

    .line 386
    const/4 v2, 0x5

    :try_start_0
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg enter...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 392
    const-string/jumbo v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "showMsg got userId from AccountService, do not print"

    invoke-static {v2, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v3

    :goto_0
    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "showMsg userId got Empty, just return."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    :goto_1
    monitor-exit v6

    .line 415
    :goto_2
    return-void

    .line 392
    :catch_0
    move-exception v2

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "showMsg cannot get userId from AccountService:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v5, v3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "showMsg generate noticeId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->c()Lcom/alipay/mobile/personalbase/model/SocialPushInfo;

    move-result-object v7

    const/4 v2, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "social show:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, v7, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_5

    iget-boolean v2, v7, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    if-eqz v2, :cond_1

    :cond_5
    const/4 v4, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v8, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;->isSocialNotifyOpen()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8, v5}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Lcom/alipay/mobile/rome/pushservice/integration/j;ILjava/util/List;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3d

    const/4 v4, 0x1

    if-ne v5, v4, :cond_c

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->g()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v4, v3

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v7}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/util/List;ILcom/alipay/mobile/personalbase/model/SocialPushInfo;)Landroid/app/Notification;

    move-result-object v7

    iget v3, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v7, Landroid/app/Notification;->flags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    sub-long v10, v8, v10

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v3, v10, v12

    if-ltz v3, :cond_6

    sput-wide v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    invoke-static {v7}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/app/Notification;)V

    iget v3, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v7, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Landroid/app/Notification;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v10, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "alipay.pushservice.action.CLICK"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_key"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_noticeId"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_biz_id"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_biz_sub_id"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez v5, :cond_7

    const-string/jumbo v3, "push_type_m_biz_id"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->k()Z

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_m_sub_biz_id"

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->l()Z

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v3

    if-lez v5, :cond_3c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    :goto_6
    const-string/jumbo v3, "push_data"

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getClickIntent uri="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v3, v9, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getClickIntent 1 noticeId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", msgId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "notificationManager() notify is called!"

    invoke-static {v2, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->i()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->f()V

    :goto_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    :catchall_1
    move-exception v2

    monitor-exit v6

    throw v2

    .line 392
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x2

    if-ne v5, v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    move v4, v3

    goto/16 :goto_5

    :cond_d
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "noticeInfo has been shown and dropped! msgId="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 395
    :cond_e
    const/4 v3, 0x1

    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/notify/NotifyBellService;->isBusinessNotifyOpen()Z

    move-result v2

    :goto_8
    if-nez v2, :cond_f

    .line 397
    monitor-exit v6

    goto/16 :goto_2

    .line 400
    :cond_f
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b()Z

    move-result v2

    if-nez v2, :cond_10

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 402
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 403
    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg This is the phone(unsupport rich style) and flag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_10
    if-nez p1, :cond_1d

    .line 410
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x4

    sget-object v7, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showMsg image from rPic="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v7, "http"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string/jumbo v7, "https"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_12
    const/4 v3, 0x0

    :cond_13
    :goto_9
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isReadyShow ret="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepareNoticeMsg scale="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , w_screen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", h_screen ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x43800000    # 256.0f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v7

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepareNoticeMsg expectWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , expectHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    new-instance v4, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/alipay/mobile/rome/pushservice/integration/d;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-direct {v7, v8, v9}, Lcom/alipay/mobile/rome/pushservice/integration/d;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V

    invoke-virtual {v4, v5, v7, v2, v3}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const/4 v2, 0x0

    :cond_17
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "prepareNoticeMsg ret="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-nez v2, :cond_1d

    .line 411
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 412
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg prepareNoticeMsg...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_19
    monitor-exit v6

    goto/16 :goto_2

    .line 410
    :cond_1a
    const/4 v4, 0x0

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v4, 0x1

    :cond_1b
    if-nez v4, :cond_13

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    goto/16 :goto_9

    .line 418
    :cond_1d
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 419
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg start for notification...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1e
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 425
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 426
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 427
    const/4 v3, 0x5

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "showMsg generate noticeId="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1f
    const/4 v3, 0x0

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Lcom/alipay/mobile/rome/pushservice/integration/j;I)I

    move-result v3

    move v5, v3

    .line 437
    :goto_a
    const/4 v3, 0x1

    if-le v5, v3, :cond_29

    .line 439
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    :cond_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v7, -0xff0100

    const/16 v8, 0x12c

    const/16 v9, 0x3e8

    invoke-virtual {v3, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v3, v7, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_21
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 442
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    .line 443
    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    move-object v4, v3

    move v3, v2

    .line 452
    :goto_b
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 453
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 455
    :cond_22
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 457
    const-string/jumbo v2, "8"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v7, "22"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb

    const/16 v10, 0xd

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v7, :cond_38

    if-lt v8, v2, :cond_38

    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_23

    .line 458
    invoke-static {v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/app/Notification;)V

    .line 459
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 460
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Landroid/app/Notification;)V

    .line 463
    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v9, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "alipay.pushservice.action.CLICK"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_key"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_noticeId"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_type"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_tMsgId"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    if-lez v5, :cond_24

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c()Ljava/lang/String;

    move-result-object v2

    :cond_24
    const-string/jumbo v5, "push_data"

    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getClickIntent uri="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v9, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v5, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x4

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getClickIntent 1 noticeId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", msgId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_26
    iput-object v2, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 467
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 468
    const/4 v2, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v7, "notificationManager() notify is called!"

    invoke-static {v2, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 471
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->i()Z

    move-result v2

    if-nez v2, :cond_39

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v2

    if-nez v2, :cond_28

    .line 475
    :try_start_b
    new-instance v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/pushservice/integration/b/c;-><init>()V

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->a:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->b:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->c:Ljava/lang/String;

    .line 479
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/c;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 484
    :cond_28
    :goto_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 485
    const-string/jumbo v7, "notification"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 484
    check-cast v2, Landroid/app/NotificationManager;

    .line 486
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->j()V

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->f()V

    .line 470
    :goto_e
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 385
    :try_start_d
    monitor-exit v6

    goto/16 :goto_2

    .line 445
    :catch_1
    move-exception v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_b

    .line 448
    :cond_29
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v7, -0xff0100

    const/16 v8, 0x12c

    const/16 v9, 0x3e8

    invoke-virtual {v3, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v3

    if-eqz v3, :cond_37

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    if-nez p1, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "drawable"

    invoke-virtual {v8, v3, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v10, 0x3

    sget-object v11, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "drawTextToBitmap gResId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scale="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2a
    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x3

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "drawTextToBitmap getWidth="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", getHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2c

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2c
    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x3

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "drawTextToBitmap  bitmapConfig getWidth="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", getHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-wide/high16 v8, 0x4068000000000000L    # 192.0

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v9, 0x4

    sget-object v10, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "resizeBitmap dstWidth="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", dstHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2e
    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_2f

    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "resizeBitmap targetWidth="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", targetHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", bitmapConfig="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2f
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/m;->d()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x4

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_30

    const/4 v10, 0x4

    sget-object v11, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "drawTextToBitmap scale="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getDensity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.width="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.height="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getScaledHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    float-to-int v13, v9

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getScaledWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    float-to-int v13, v9

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.getConfig().name()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_30
    if-eqz v8, :cond_36

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_36

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v12, 0x41700000    # 15.0f

    mul-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42a00000    # 80.0f

    mul-float/2addr v9, v12

    float-to-double v12, v9

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v9, v12

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v8, v13, v14, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v13, 0x4

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v13

    if-eqz v13, :cond_31

    const/4 v13, 0x4

    sget-object v14, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "drawTextToBitmap textSize="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", getTypeface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", reservBottom="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bounds.width="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bounds.height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_31
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v14

    if-eqz v14, :cond_32

    const/4 v14, 0x4

    sget-object v15, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "drawTextToBitmap ascent="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", descent="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", bottom="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", top="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", leading="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    iget v15, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v15, v15

    sub-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v17, v9, v15

    div-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v16, v16, v17

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v16, v16, v17

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v9, v18

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v19

    sub-int v9, v9, v19

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    sub-int v9, v18, v9

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v13, v13

    add-int/lit8 v13, v13, 0x1

    sub-int/2addr v9, v13

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v13, v13, v18

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0xa

    mul-int/lit8 v13, v13, 0x6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int v12, v12, v18

    add-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xa

    mul-int/lit8 v12, v12, 0x9

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v18

    if-eqz v18, :cond_33

    const/16 v18, 0x4

    sget-object v19, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "drawTextToBitmap x:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v20, ", y="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", fontHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y3="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y4="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual {v10, v8, v9, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_34
    :goto_f
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x7fffffff

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_35
    :goto_10
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    move-object v4, v3

    move v3, v2

    goto/16 :goto_b

    :cond_36
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_34

    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v10, "drawTextToBitmap gText is empty."

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v3, v7, :cond_35

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_10

    .line 457
    :cond_38
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 481
    :catch_2
    move-exception v2

    :try_start_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v7, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v8, "save BizIdMap error"

    invoke-interface {v2, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_d

    .line 470
    :catchall_2
    move-exception v2

    :try_start_f
    monitor-exit v5

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 491
    :cond_39
    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "noticeInfo has been shown and dropped! msgId="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 492
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_e

    :cond_3a
    move v5, v3

    goto/16 :goto_a

    :cond_3b
    move v2, v3

    goto/16 :goto_8

    :cond_3c
    move-object v2, v3

    goto/16 :goto_6

    :cond_3d
    move v4, v3

    goto/16 :goto_5

    :cond_3e
    move v2, v4

    goto/16 :goto_3
.end method
