.class Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;
.super Ljava/lang/Object;
.source "ChoreographerProcessor.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field final synthetic d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:[J

.field private i:I

.field private j:[J

.field private k:I

.field private l:J

.field private m:I


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 133
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string/jumbo v0, "stop"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->e:Ljava/lang/String;

    .line 137
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a:Z

    .line 138
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->c:Z

    .line 185
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    .line 186
    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    .line 211
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    .line 212
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    .line 259
    const/16 v0, 0xc

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->j:[J

    .line 260
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    .line 310
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    .line 311
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)V

    return-void
.end method

.method private a(J)V
    .locals 18

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->j:[J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    aput-wide p1, v1, v2

    .line 273
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    .line 274
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_2

    .line 275
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->k:I

    .line 277
    const-wide/16 v4, 0x0

    .line 278
    const/4 v7, 0x0

    .line 279
    const-wide/16 v2, 0x0

    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v1, 0x0

    move v13, v1

    move-wide v14, v2

    move-wide v1, v14

    move-wide/from16 v16, v4

    move-wide/from16 v3, v16

    move v5, v6

    move v6, v7

    move v7, v13

    :goto_0
    const/16 v8, 0xc

    if-ge v7, v8, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->j:[J

    aget-wide v8, v8, v7

    const-wide/16 v10, 0x3c

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->j:[J

    aget-wide v8, v8, v7

    add-long/2addr v1, v8

    .line 284
    add-int/lit8 v5, v5, 0x1

    .line 281
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 286
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->j:[J

    aget-wide v8, v8, v7

    add-long/2addr v3, v8

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 290
    :cond_1
    int-to-double v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    int-to-double v9, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    int-to-double v11, v6

    add-double/2addr v9, v11

    div-double/2addr v7, v9

    .line 291
    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-lez v9, :cond_3

    .line 293
    long-to-double v1, v1

    mul-double/2addr v1, v7

    int-to-double v9, v5

    div-double/2addr v1, v9

    long-to-double v3, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    mul-double/2addr v3, v7

    int-to-double v5, v6

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 297
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Last 1minute smoothness score: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-class v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "SMOOTHNESS_SCORE"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Device total smoothness score: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c()V

    .line 307
    :cond_2
    return-void

    .line 295
    :cond_3
    long-to-double v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v7

    mul-double/2addr v1, v3

    int-to-double v3, v6

    div-double/2addr v1, v3

    double-to-long v1, v1

    goto/16 :goto_2

    .line 298
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    long-to-double v1, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-long v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Save deviceTotalScore Failed"

    invoke-interface {v2, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 158
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->c:Z

    if-nez v0, :cond_1

    .line 160
    :cond_0
    monitor-exit v1

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b:Z

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/b;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    const-string/jumbo v0, "start"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->e:Ljava/lang/String;

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 176
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    monitor-enter v1

    .line 177
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a:Z

    .line 178
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    .line 179
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    .line 180
    const-string/jumbo v0, "stop"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->e:Ljava/lang/String;

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()J
    .locals 7

    .prologue
    .line 339
    const-class v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    const-string/jumbo v1, "SMOOTHNESS_SCORE"

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    move-wide v1, v0

    .line 348
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    :try_start_1
    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->m:I

    .line 350
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "SMOOTHNESS_SCORE"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :goto_1
    :try_start_2
    monitor-exit v3

    return-wide v1

    .line 345
    :catch_0
    move-exception v0

    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->l:J

    move-wide v1, v0

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "reset StoredScore Failed"

    invoke-interface {v4, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public doFrame(J)V
    .locals 10

    .prologue
    .line 143
    const-class v4, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    monitor-enter v4

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a:Z

    if-eqz v0, :cond_b

    .line 145
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    const-wide/32 v2, 0x77359400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    :cond_1
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->f:J

    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    aput-wide v0, v2, v3

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->i:I

    const-wide/16 v1, 0x3c

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v9, v0

    move v0, v3

    move v3, v9

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    const-wide/16 v6, 0x3c

    aput-wide v6, v5, v3

    :cond_2
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    aget-wide v5, v5, v3

    cmp-long v5, v5, v1

    if-gez v5, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    aget-wide v1, v1, v3

    :cond_3
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->h:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x28

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v5, 0x14

    cmp-long v3, v1, v5

    if-ltz v3, :cond_6

    const-wide/16 v5, 0x14

    cmp-long v3, v5, v1

    if-gtz v3, :cond_9

    const-wide/16 v5, 0x1e

    cmp-long v3, v1, v5

    if-gez v3, :cond_9

    const-wide/16 v5, 0x14

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x4

    mul-long/2addr v1, v5

    const-wide/16 v5, 0x14

    add-long/2addr v1, v5

    :cond_6
    :goto_1
    long-to-double v1, v1

    rsub-int/lit8 v0, v0, 0xa

    int-to-double v5, v0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    mul-double v0, v1, v5

    double-to-long v0, v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Last 5second smoothness score: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a(J)V

    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    :cond_8
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->g:J

    .line 147
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->c:Z

    .line 154
    :goto_2
    monitor-exit v4

    return-void

    .line 145
    :cond_9
    const-wide/16 v5, 0x1e

    cmp-long v3, v5, v1

    if-gtz v3, :cond_a

    const-wide/16 v5, 0x28

    cmp-long v3, v1, v5

    if-gez v3, :cond_a

    const-wide/16 v5, 0x1e

    add-long/2addr v1, v5

    goto :goto_1

    :cond_a
    const-wide/16 v5, 0x28

    sub-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v5

    const-wide v5, 0x4051800000000000L    # 70.0

    add-double/2addr v1, v5

    double-to-long v1, v1

    goto :goto_1

    .line 151
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
