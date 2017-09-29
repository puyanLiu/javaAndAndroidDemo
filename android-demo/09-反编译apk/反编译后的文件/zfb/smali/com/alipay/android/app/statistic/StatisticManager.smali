.class public Lcom/alipay/android/app/statistic/StatisticManager;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

.field public static b:Ljava/io/File;

.field private static c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/android/app/statistic/record/StandardLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/alipay/android/app/statistic/LogUploadTask;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->d:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->f:Ljava/lang/Object;

    .line 47
    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->g:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    .line 48
    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 51
    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->h:Ljava/util/concurrent/BlockingQueue;

    .line 54
    new-instance v0, Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/LogUploadTask;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->i:Lcom/alipay/android/app/statistic/LogUploadTask;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(/cashier/main|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->j:Ljava/util/regex/Pattern;

    .line 76
    const-string/jumbo v0, "resultStatus=\\{(\\d{3,10})\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->k:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/statistic/b;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/b;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 154
    const-class v1, Lcom/alipay/android/app/statistic/StatisticManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 157
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->c()V

    .line 158
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a()Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->i:Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit v1

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static varargs a(I[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 209
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    :cond_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 219
    :pswitch_1
    :try_start_3
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->j:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0

    .line 226
    :cond_2
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 227
    if-eqz v0, :cond_3

    .line 228
    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 230
    :cond_3
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    :try_start_4
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 232
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    :try_start_5
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 237
    :pswitch_2
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f()V

    goto :goto_0

    .line 241
    :pswitch_3
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_4
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g()V

    goto :goto_0

    .line 249
    :pswitch_5
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_6
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :pswitch_8
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :pswitch_9
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :pswitch_a
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_b
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :pswitch_c
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    .line 278
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    goto/16 :goto_0

    .line 282
    :pswitch_d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    .line 284
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    goto/16 :goto_0

    .line 288
    :pswitch_e
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 289
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 291
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 292
    const/4 v0, 0x0

    :try_start_6
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 293
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 364
    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 332
    const-string/jumbo v1, "showform"

    aput-object v1, v0, v3

    .line 333
    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    .line 336
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 341
    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 343
    const/16 v0, 0xe

    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 456
    if-nez p1, :cond_0

    .line 457
    aput-object p0, v0, v2

    .line 458
    const-string/jumbo v1, "click"

    aput-object v1, v0, v3

    .line 459
    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    .line 466
    :goto_0
    invoke-static {v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 467
    return-void

    .line 461
    :cond_0
    aput-object p0, v0, v2

    .line 462
    const-string/jumbo v1, "click"

    aput-object v1, v0, v3

    .line 463
    aput-object p1, v0, v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 513
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 534
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/statistic/logfield/LogFieldWinUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 535
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    const-string/jumbo v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 527
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    if-eqz p0, :cond_0

    .line 350
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 351
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 356
    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(J)V

    .line 361
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 303
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 304
    const/4 v1, 0x0

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    .line 305
    if-eqz p0, :cond_0

    .line 306
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    .line 311
    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 313
    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 314
    return-void

    .line 308
    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 113
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->b(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->g:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    .line 114
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->g:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->a(J)V

    .line 121
    new-instance v0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;-><init>()V

    .line 122
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->g:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 3

    .prologue
    .line 169
    const-class v1, Lcom/alipay/android/app/statistic/StatisticManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/statistic/c;

    invoke-direct {v2}, Lcom/alipay/android/app/statistic/c;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v1

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)V
    .locals 4

    .prologue
    .line 372
    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private static b(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 2

    .prologue
    .line 194
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    :try_start_0
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 200
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 388
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;-><init>()V

    .line 540
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->b(Ljava/lang/String;)V

    .line 546
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->c(Ljava/lang/String;)V

    .line 547
    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 548
    return-void

    .line 544
    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    if-eqz p0, :cond_0

    .line 403
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 404
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 409
    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->e(J)V

    .line 414
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 317
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 318
    const/4 v1, 0x0

    const-string/jumbo v2, "unzip"

    aput-object v2, v0, v1

    .line 319
    if-eqz p0, :cond_0

    .line 320
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    .line 325
    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 327
    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 328
    return-void

    .line 322
    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public static c(J)V
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 392
    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static c(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 470
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 471
    const/4 v1, 0x0

    const-string/jumbo v2, "encrypt"

    aput-object v2, v0, v1

    .line 472
    if-eqz p0, :cond_0

    .line 473
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    .line 478
    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 480
    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 481
    return-void

    .line 475
    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x7

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public static d(J)V
    .locals 4

    .prologue
    .line 384
    const/16 v0, 0x8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 396
    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static d(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 485
    const/4 v1, 0x0

    const-string/jumbo v2, "decrypt"

    aput-object v2, v0, v1

    .line 486
    if-eqz p0, :cond_0

    .line 487
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    .line 492
    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 494
    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 495
    return-void

    .line 489
    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 444
    const/4 v1, 0x0

    const-string/jumbo v2, "initial"

    aput-object v2, v0, v1

    .line 445
    const/4 v1, 0x1

    const-string/jumbo v2, "click"

    aput-object v2, v0, v1

    .line 446
    const/4 v1, 0x2

    const-string/jumbo v2, "/cashier/main"

    aput-object v2, v0, v1

    .line 448
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(J)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 418
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 420
    new-array v0, v4, [Ljava/lang/String;

    .line 421
    const-string/jumbo v1, "net_end"

    aput-object v1, v0, v2

    .line 422
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    .line 423
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 424
    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->h:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic g()V
    .locals 5

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/alipay/android/app/statistic/a;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cleanExpiresFile:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been dropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/statistic/d;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/d;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :try_start_0
    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->b(Ljava/io/File;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/alipay/android/app/statistic/StatisticManager;->i:Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j()Lcom/alipay/android/app/statistic/record/StandardLogRecord;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    return-object v0
.end method
