.class final Lcom/uc/webview/export/internal/a/a/c;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/a/a/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/a/a/a;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 577
    invoke-static {}, Lcom/uc/webview/export/internal/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v5, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    monitor-enter v5

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/a/a/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "UC_WA_STAT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 583
    const-string/jumbo v0, "1"

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 584
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_1

    .line 585
    const-string/jumbo v0, "SDKWaStat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "==handlUpload==last upload time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 590
    sub-long v2, v8, v6

    const-wide/32 v10, 0x5265c00

    cmp-long v0, v2, v10

    if-gez v0, :cond_3

    .line 591
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_2

    .line 592
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e1\u5929,\u4e0d\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 596
    :cond_3
    const/4 v0, 0x0

    .line 598
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_9

    .line 599
    :try_start_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    const-string/jumbo v3, "2"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/a/a/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/uc/webview/export/internal/a/a/a;->b:Landroid/content/Context;

    const-string/jumbo v3, "UC_WA_STAT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    move-object v4, v1

    .line 600
    sget-object v1, Lcom/uc/webview/export/internal/d;->j:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_c

    .line 601
    iget-object v1, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-static {v1}, Lcom/uc/webview/export/internal/a/a/a;->a(Lcom/uc/webview/export/internal/a/a/a;)[B

    move-result-object v3

    .line 602
    if-nez v3, :cond_5

    .line 603
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 606
    :cond_5
    const/4 v2, 0x0

    .line 609
    :try_start_2
    invoke-static {v3}, Lcom/uc/webview/export/internal/a/a/d;->a([B)[B

    move-result-object v3

    .line 610
    const/4 v2, 0x1

    .line 611
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_6

    .line 612
    const-string/jumbo v1, "SDKWaStat"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u52a0\u5bc6\u540e\u7684\u6570\u636e:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    :cond_6
    :goto_1
    :try_start_3
    const-string/jumbo v1, "27120f2b4115"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "AppChk#2014"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/uc/webview/export/internal/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "http://applog.uc.cn:9081/collect?uc_param_str=&chk="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "&vno="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&uuid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "&app="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    const-string/jumbo v1, "&enc=aes"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 620
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_8

    .line 621
    const-string/jumbo v1, "SDKWaStat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "request url:"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_8
    const/4 v1, 0x3

    .line 627
    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_9

    .line 628
    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/a/a/a;->a(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 629
    const/4 v0, 0x1

    .line 647
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 649
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wa_upload.wa"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 651
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-static {v0, v8, v9}, Lcom/uc/webview/export/internal/a/a/a;->a(Lcom/uc/webview/export/internal/a/a/a;J)V

    .line 654
    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_b

    .line 655
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u9996\u6b21\u4e0d\u4e0a\u4f20\u6570\u636e"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-static {v0, v8, v9}, Lcom/uc/webview/export/internal/a/a/a;->a(Lcom/uc/webview/export/internal/a/a/a;J)V

    .line 658
    :cond_b
    monitor-exit v5

    goto/16 :goto_0

    .line 614
    :catch_0
    move-exception v1

    .line 615
    const-string/jumbo v10, "SDKWaStat"

    const-string/jumbo v11, "data encrypt"

    invoke-static {v10, v11, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 635
    :cond_c
    :try_start_4
    iget-object v1, p0, Lcom/uc/webview/export/internal/a/a/c;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v1, v4}, Lcom/uc/webview/export/internal/a/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_9

    .line 637
    const-string/jumbo v2, "SDKWaStat"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v2, Lcom/uc/webview/export/internal/d;->j:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 639
    const/4 v0, 0x1

    goto :goto_3

    .line 641
    :catch_1
    move-exception v1

    .line 642
    :try_start_5
    const-string/jumbo v2, "SDKWaStat"

    const-string/jumbo v3, "\u7b2c\u4e09\u65b9\u4e0a\u4f20\u6570\u636e\u51fa\u9519!"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_d
    move v1, v2

    goto :goto_2
.end method
