.class public final Lcom/uc/webview/export/internal/utility/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z
    .locals 11

    .prologue
    .line 43
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify: file = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 45
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/b$a;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b$a;->b([Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: failed: Signatures of archive is empty. Costs "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    :cond_0
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 55
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v6

    .line 56
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/b$a;->a([Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: failed: PublicKeys of archive is empty. Costs "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p4, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    :cond_2
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_3
    :try_start_2
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 0: get PublicKeys of archive ok. Costs "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz p2, :cond_5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/uc/webview/export/internal/utility/b$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 70
    invoke-static {v6, v2}, Lcom/uc/webview/export/internal/utility/b;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 1: get Signatures of app from current context and verify ok. Costs "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 74
    :cond_4
    :try_start_3
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 1: get Signatures of app from current context and verify failed. Costs "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 79
    const/16 v0, 0x6d6

    new-array v9, v0, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    fill-array-data v9, :array_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :try_start_4
    const-string/jumbo v1, "nothing"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 83
    const/4 v2, 0x0

    .line 85
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :try_start_6
    invoke-virtual {v1, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 88
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 90
    :goto_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/b$a;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 91
    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/utility/b;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify: step 2: get Signatures of app from hardcode app and verify ok. Costs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 93
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 117
    :cond_6
    :goto_2
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 88
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_7
    :goto_4
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_0
    move-exception v0

    move-object v0, v3

    .line 96
    :goto_5
    if-eqz v0, :cond_8

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 100
    :cond_8
    :goto_6
    :try_start_d
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify: step 2: get Signatures of app from hardcode app and verify failed. Costs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    invoke-static {p1, p3}, Lcom/uc/webview/export/internal/utility/b$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 106
    invoke-static {v6, v2}, Lcom/uc/webview/export/internal/utility/b;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 3: get Signatures of app from "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and verify ok. Costs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 108
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 98
    :cond_9
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_6

    .line 99
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 98
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_7
    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_a
    :goto_8
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 113
    :catch_2
    move-exception v0

    .line 114
    if-eqz p4, :cond_b

    const/4 v1, 0x2

    :try_start_11
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {p4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 115
    :cond_b
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 110
    :cond_c
    :try_start_12
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 3: get Signatures of app from "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and verify failed. Costs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_d
    if-eqz p4, :cond_e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 117
    :cond_e
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verify: total costs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    const-string/jumbo v1, "SignatureVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Verify: total costs:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 89
    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 99
    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v1

    goto/16 :goto_8

    .line 98
    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 88
    :catchall_4
    move-exception v0

    goto/16 :goto_3

    .line 79
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x4dt
        0x41t
        0x4et
        0x49t
        0x46t
        0x45t
        0x53t
        0x54t
        0x2et
        0x4dt
        0x46t
        -0xdt
        0x4dt
        -0x34t
        -0x35t
        0x4ct
        0x4bt
        0x2dt
        0x2et
        -0x2ft
        0xdt
        0x4bt
        0x2dt
        0x2at
        -0x32t
        -0x34t
        -0x31t
        -0x4dt
        0x52t
        0x30t
        -0x2ct
        0x33t
        -0x20t
        -0x1bt
        0x72t
        0x2et
        0x4at
        0x4dt
        0x2ct
        0x49t
        0x4dt
        -0x2ft
        0x75t
        -0x56t
        0x4t
        0x9t
        0x58t
        -0x18t
        0x19t
        -0x3ct
        -0x65t
        0x1at
        0x2at
        0x68t
        -0x8t
        0x17t
        0x25t
        0x26t
        -0x19t
        -0x5ct
        0x2at
        0x38t
        -0x19t
        0x17t
        0x15t
        -0x1ct
        0x17t
        0x25t
        -0x6at
        0x0t
        -0x6bt
        0x6bt
        -0xet
        0x72t
        -0xft
        0x72t
        -0x7t
        0x25t
        -0x1at
        -0x5at
        0x5at
        0x29t
        0x38t
        -0x1at
        -0x5bt
        0x14t
        -0x1bt
        0x67t
        -0x5at
        -0x8t
        0x42t
        0xdt
        -0x2ct
        -0x55t
        -0x38t
        -0x33t
        -0x1ft
        -0x1bt
        0xat
        -0xat
        0x70t
        0x34t
        -0x2ct
        0x75t
        -0x37t
        0x4ct
        0x7t
        0xat
        0x58t
        0x29t
        -0x6ct
        0x7t
        -0x59t
        0x78t
        0x1bt
        -0x6ct
        -0x6at
        -0x47t
        -0x68t
        0x24t
        0x65t
        0x1bt
        -0x66t
        0x66t
        0x7t
        0x46t
        -0x6at
        0x3bt
        0x6t
        0x79t
        -0x6bt
        -0x46t
        0x26t
        0x67t
        0x64t
        -0x47t
        0x27t
        -0x25t
        -0x7et
        -0x34t
        0x1t
        0x0t
        0x50t
        0x4bt
        0x7t
        0x8t
        -0x22t
        -0x59t
        0x35t
        0x30t
        -0x7dt
        0x0t
        0x0t
        0x0t
        -0x74t
        0x0t
        0x0t
        0x0t
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x41t
        0x4et
        0x44t
        0x52t
        0x4ft
        0x49t
        0x44t
        0x5ft
        0x2et
        0x53t
        0x46t
        0x6dt
        -0x72t
        -0x33t
        0x6at
        -0x3et
        0x40t
        0x14t
        0x46t
        -0x9t
        -0x7ft
        -0x44t
        -0x3dt
        0x2ct
        0x2bt
        0x32t
        0x61t
        0x12t
        0x68t
        0x1bt
        0x7t
        0x5ct
        -0x1ct
        0x7t
        0x69t
        0x6bt
        -0x6dt
        0x4at
        -0x5dt
        0x41t
        -0x45t
        0x29t
        0x63t
        0x33t
        0x26t
        0x17t
        -0x33t
        -0x74t
        -0x63t
        -0x47t
        -0x7at
        -0x1ct
        -0x13t
        -0x55t
        0x14t
        0x17t
        -0x7et
        -0x45t
        0x6ft
        -0xdt
        -0x63t
        0x73t
        0xat
        -0x58t
        -0x6bt
        -0x40t
        -0x6dt
        -0x6ft
        -0x4ct
        -0x6ct
        -0x3at
        -0x7et
        0x56t
        -0x64t
        -0x8t
        0x1et
        0x73t
        -0x63t
        -0x1et
        0x25t
        -0xet
        0x69t
        0xat
        -0x4bt
        -0x4ct
        0x48t
        0x33t
        -0x5ft
        0x60t
        -0x9t
        0x3ft
        0x40t
        -0x2ft
        0x8t
        -0x2ft
        -0x40t
        -0xat
        -0x7ct
        -0x2et
        0x72t
        0x32t
        -0x22t
        0x77t
        0x73t
        -0x5bt
        -0xdt
        -0x37t
        -0x5et
        -0x38t
        0x17t
        -0x65t
        -0x4ft
        -0x31t
        0x70t
        0x39t
        -0x7ct
        -0x4ft
        0x48t
        -0x3dt
        0x26t
        -0x58t
        -0x59t
        -0x9t
        0x19t
        -0x64t
        -0x28t
        -0x5at
        0x5dt
        0x7ft
        0x3et
        0x25t
        -0x5ft
        0x4at
        -0x1dt
        0x75t
        0x1ft
        0x64t
        0x25t
        -0x3ct
        -0x1bt
        -0x29t
        -0x1at
        0x15t
        -0x61t
        -0x79t
        -0x32t
        -0x62t
        0x3ft
        -0x77t
        -0x6ft
        0x2t
        0x65t
        0x45t
        -0x1dt
        -0x1ft
        0x12t
        0x12t
        0x7at
        -0x14t
        -0x5t
        -0x2ft
        0x27t
        0xft
        0x1ft
        0x46t
        -0x4t
        0x1ct
        0x24t
        0x49t
        -0x4ct
        0x39t
        0x6at
        0x23t
        -0x10t
        -0x64t
        0x39t
        0x72t
        0x1dt
        -0x29t
        -0x37t
        0x45t
        0x2bt
        0x39t
        -0x77t
        0x54t
        0x65t
        0x34t
        0x54t
        0x57t
        -0x7dt
        -0x29t
        -0x49t
        -0x79t
        0x1bt
        0x37t
        0x27t
        -0xbt
        0x56t
        -0x9t
        0x3bt
        0x36t
        -0x7ft
        0x79t
        0x65t
        -0x27t
        -0x42t
        -0x68t
        0x35t
        -0x23t
        -0x11t
        -0x16t
        0x68t
        -0x7dt
        -0x49t
        -0x9t
        0x61t
        -0x6bt
        0x4dt
        0x2ft
        -0x64t
        0x3ft
        0x50t
        0x4bt
        0x7t
        0x8t
        0x17t
        0x12t
        -0x2et
        0x4bt
        -0x2et
        0x0t
        0x0t
        0x0t
        0x5t
        0x1t
        0x0t
        0x0t
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x15t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x41t
        0x4et
        0x44t
        0x52t
        0x4ft
        0x49t
        0x44t
        0x5ft
        0x2et
        0x52t
        0x53t
        0x41t
        0x33t
        0x68t
        0x62t
        0xet
        0x64t
        -0x1dt
        -0x2ct
        0x6at
        -0xdt
        0x68t
        -0x5t
        -0x32t
        -0x35t
        -0x38t
        -0x32t
        -0x4ct
        -0x60t
        -0x77t
        -0x27t
        -0x37t
        -0x60t
        -0x77t
        -0x27t
        -0x72t
        -0x77t
        -0x6ft
        -0x2ft
        -0x70t
        -0x31t
        -0x80t
        -0x79t
        -0x73t
        0x3t
        0x22t
        -0x3dt
        -0x3ct
        -0x36t
        -0x36t
        0x60t
        -0x40t
        -0x73t
        0x50t
        -0x39t
        -0x48t
        -0x60t
        -0x77t
        0x49t
        -0x2et
        -0x60t
        -0x77t
        0x49t
        -0x2ct
        -0x60t
        -0x77t
        -0x4ft
        0x6et
        0x1t
        0x33t
        0x13t
        0x23t
        0x13t
        0x13t
        -0x75t
        -0x11t
        -0x5ct
        -0x6dt
        0x6bt
        0xct
        0x78t
        -0x1ft
        0x6at
        0x18t
        0x41t
        0x5at
        -0x4t
        0xct
        -0x47t
        0xdt
        0x38t
        -0x27t
        -0x68t
        0x43t
        0x59t
        -0x28t
        -0x7ct
        -0x67t
        -0x6et
        -0xdt
        0x60t
        0x1ct
        0xet
        0x61t
        -0x5at
        -0xct
        0x14t
        0x18t
        -0x79t
        0x1dt
        -0x38t
        -0x57t
        -0x7et
        0x71t
        -0x48t
        -0x7ct
        -0x67t
        0x4at
        -0x6dt
        0x61t
        0x1ct
        0x6et
        0x64t
        0xet
        0x33t
        -0x78t
        0x63t
        -0x60t
        0x20t
        -0x32t
        0x6bt
        0x68t
        0x68t
        0x60t
        0x6ct
        0x6ct
        0x60t
        0x60t
        0x66t
        0x68t
        0x68t
        0x6at
        0x16t
        0x25t
        -0x3ft
        0x6ft
        0x64t
        0x60t
        0x66t
        0x6at
        0x68t
        0x64t
        0x6ct
        0x8t
        0x15t
        -0x60t
        -0x46t
        -0x73t
        -0x73t
        -0xdt
        -0x6ft
        -0x3t
        -0x3ct
        -0x38t
        -0x36t
        -0x40t
        -0x24t
        -0x28t
        -0x35t
        0x60t
        -0x30t
        -0x28t
        -0x37t
        -0x2ct
        -0x28t
        -0x38t
        -0x50t
        -0x16t
        0x64t
        -0x1ct
        0x57t
        -0x19t
        -0x7t
        -0x5et
        0x53t
        0x27t
        -0x2ct
        -0x2ct
        0x2ft
        -0x4ft
        -0x36t
        0x4dt
        -0x16t
        0x5ft
        0x76t
        -0x14t
        0x1t
        0x43t
        0x4at
        -0x3ft
        0x45t
        -0x5bt
        0x77t
        0x71t
        -0x49t
        0xet
        0x4dt
        0x7bt
        0x2at
        -0x55t
        -0x1et
        -0x36t
        0x75t
        0x5et
        -0x14t
        -0xft
        -0x6et
        0x55t
        -0x23t
        -0x5bt
        -0x3bt
        0x71t
        -0x36t
        0x2bt
        -0x6at
        -0x61t
        -0xbt
        0x54t
        0x6dt
        -0x76t
        -0x66t
        0x67t
        0x2ct
        0x78t
        -0x13t
        -0x28t
        0x15t
        0x26t
        0x6ft
        -0x41t
        -0x1at
        -0x26t
        0x44t
        -0x15t
        0xdt
        -0x1at
        -0x75t
        -0x1et
        0x3at
        -0x65t
        0x1bt
        -0x6et
        -0x5et
        0x59t
        0x74t
        0x64t
        -0x4at
        -0x41t
        0x66t
        -0x54t
        0x6ft
        0x2bt
        -0x29t
        -0xat
        0x7at
        -0x38t
        0x14t
        -0xat
        -0x3dt
        -0x1ft
        0x7at
        -0x2ct
        0x6ct
        -0x1t
        -0x6ct
        0x7ct
        -0x3t
        -0x15t
        0xbt
        0x2bt
        -0x62t
        0x36t
        -0x68t
        0x4at
        0x28t
        0x47t
        0x1ct
        0x7ct
        -0x53t
        0x3dt
        -0x7bt
        -0x67t
        0x5dt
        -0x60t
        -0x16t
        0x43t
        -0x80t
        -0x7bt
        -0x41t
        -0x4bt
        0x7at
        -0xet
        -0x3at
        -0x4at
        -0xct
        0x79t
        -0x1at
        0x72t
        0x4bt
        0x4ft
        0x32t
        0x31t
        0x33t
        0x32t
        0x30t
        -0x5et
        0x5t
        0x39t
        0x33t
        -0x30t
        0x5dt
        -0x35t
        0x4ct
        0x1bt
        -0x48t
        0x2t
        0x39t
        0xat
        0x3at
        -0x4at
        0x34t
        0x36t
        -0x67t
        0x5t
        0x5et
        0x12t
        0x52t
        -0x4bt
        0x3ft
        -0x3dt
        -0x41t
        0x64t
        0x67t
        -0x13t
        -0x77t
        -0x5et
        -0x61t
        0x1ft
        -0x71t
        0x54t
        0x17t
        -0x27t
        0x49t
        0x19t
        0x3et
        0x39t
        0x6at
        0x7bt
        -0x15t
        -0x39t
        -0xbt
        -0x61t
        0xft
        -0x4at
        -0x79t
        0x7ct
        -0x53t
        0x3ct
        0x20t
        -0x2dt
        0x51t
        0x7ft
        -0x13t
        -0x1dt
        0x3dt
        -0x1ft
        -0x74t
        0x48t
        -0x1t
        -0x5at
        -0x5ct
        -0x1bt
        0x75t
        0x53t
        0x23t
        -0x4ct
        0x6et
        0x48t
        -0x14t
        -0x7t
        0x7ft
        0x41t
        0x7bt
        -0x62t
        -0x27t
        -0x3et
        -0xbt
        0x4ft
        -0x6et
        0x36t
        0x29t
        -0x54t
        0x39t
        0x76t
        -0x76t
        0x61t
        -0x9t
        -0x74t
        0x45t
        0x17t
        -0x56t
        0x3ct
        -0x64t
        -0x3et
        0x57t
        0x3bt
        -0x69t
        0x4et
        0x32t
        0x3ct
        0x2et
        -0x14t
        -0x29t
        0x29t
        -0x2at
        -0x20t
        -0xft
        0x21t
        0x7at
        -0xdt
        0x5bt
        0x5t
        -0x19t
        0x6et
        -0x6at
        0x68t
        -0x45t
        -0x60t
        0x48t
        -0x71t
        -0x52t
        -0x7at
        0x7ft
        0x29t
        0x1dt
        0x3dt
        0x27t
        0x26t
        0x31t
        0x5dt
        -0x4at
        0x9t
        0x6ft
        -0xet
        0x3ft
        0x68t
        -0x28t
        -0x8t
        -0x31t
        -0x60t
        -0xft
        0x37t
        0x30t
        0x9t
        0x19t
        -0x7ct
        0x51t
        0x3bt
        0x3et
        -0x60t
        -0x37t
        0xct
        0x35t
        0x61t
        -0x5et
        0x46t
        0x10t
        0x4bt
        0x63t
        0x43t
        -0x6ct
        -0x3bt
        -0x16t
        -0x63t
        -0x6dt
        -0x4ct
        0xft
        0x2bt
        0x5at
        -0x24t
        -0x43t
        -0xft
        -0x31t
        0x7bt
        0x6ft
        0x10t
        -0x9t
        -0x51t
        0x3at
        -0x2at
        -0x57t
        -0x31t
        0xbt
        0xet
        -0x47t
        -0x34t
        0x39t
        0x77t
        0x4bt
        0x40t
        0x65t
        -0x1bt
        0x35t
        0x69t
        0x3bt
        0x46t
        -0x5dt
        -0x16t
        -0x66t
        0x69t
        -0x4et
        0x7ft
        0x17t
        -0x4t
        0x4bt
        0x38t
        -0x3dt
        0x78t
        -0x69t
        -0x73t
        -0x51t
        0x35t
        -0x9t
        -0x68t
        -0x1bt
        -0x7bt
        -0x2dt
        -0x7et
        -0x1bt
        -0x41t
        -0x3ct
        0x6dt
        -0x69t
        0x2ft
        -0x13t
        0x3ct
        -0x45t
        0x72t
        -0x13t
        0x3bt
        -0xat
        -0xdt
        0x17t
        0x1at
        0x4ft
        0x3dt
        -0x50t
        0x12t
        -0x72t
        -0x4t
        -0x2bt
        -0x17t
        -0x41t
        -0x2dt
        0x2bt
        0x7ct
        0x5at
        -0xdt
        -0xet
        -0x1bt
        -0x54t
        0x1dt
        -0x32t
        -0x3at
        0x36t
        0x2ft
        0x72t
        0x73t
        0xft
        0x48t
        -0xbt
        -0xft
        0x7ft
        -0x65t
        -0x26t
        -0x3dt
        -0x4dt
        -0x2dt
        0x7bt
        0x6bt
        -0x29t
        -0x22t
        0x34t
        -0x77t
        -0x1at
        -0x44t
        -0x3t
        -0x6ft
        -0x2et
        0x6ft
        0x4ft
        -0x52t
        0x3ct
        0x71t
        -0x59t
        -0x35t
        0x62t
        -0x11t
        -0x6dt
        0x6bt
        -0x2dt
        0x4et
        -0x62t
        0x38t
        0x50t
        0xet
        0x0t
        0x50t
        0x4bt
        0x7t
        0x8t
        0x55t
        -0x7at
        0x4t
        -0x38t
        0x5dt
        0x2t
        0x0t
        0x0t
        0x55t
        0x3t
        0x0t
        0x0t
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x19t
        -0x7bt
        0x6t
        0x47t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x41t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x4dt
        0x61t
        0x6et
        0x69t
        0x66t
        0x65t
        0x73t
        0x74t
        0x2et
        0x78t
        0x6dt
        0x6ct
        0x5dt
        -0x6ft
        -0x3ft
        0x4et
        -0x3et
        0x40t
        0x14t
        0x45t
        -0x11t
        0x4ct
        0x45t
        -0x66t
        -0x18t
        -0x7et
        -0x7bt
        0xbt
        0x63t
        -0x8t
        0x2t
        0x43t
        0x4at
        -0x24t
        0x1at
        0x57t
        -0x52t
        0x5ct
        0x18t
        0x36t
        0x7ct
        0x41t
        -0x5ft
        -0x80t
        0xdt
        -0x26t
        0x56t
        -0x76t
        -0x4et
        0x75t
        -0x3ft
        -0x7et
        0x6ft
        -0x10t
        0x23t
        -0x8t
        0x2ct
        -0x29t
        -0x4t
        -0x7ft
        -0x62t
        0xet
        0x3t
        -0x2ct
        -0x32t
        -0x35t
        -0x33t
        -0x45t
        -0x43t
        -0x11t
        -0x32t
        0x7bt
        -0xdt
        -0x2et
        0x40t
        -0x5ft
        0x76t
        0x46t
        0x32t
        -0x16t
        -0x16t
        -0x77t
        0x1ct
        -0x16t
        0x74t
        0x1et
        0x6at
        -0x4t
        0x6t
        -0xct
        -0x40t
        0x1at
        0x6ct
        -0x40t
        0x37t
        -0x28t
        -0x7et
        0x1ft
        0x70t
        -0x5ft
        0x4ft
        0x4dt
        -0x4ct
        0x50t
        -0x57t
        0x54t
        -0x47t
        0x32t
        0xdt
        0x14t
        -0x15t
        0xdt
        0x45t
        0x6at
        -0x3dt
        0x32t
        0x25t
        -0x2ct
        0x72t
        0x6at
        0x9t
        -0x36t
        -0x53t
        0x5et
        -0x4ct
        0x24t
        0xat
        -0x23t
        -0x55t
        0x4ft
        -0x6ct
        0x1at
        -0x5dt
        0x4ct
        -0x10t
        -0x39t
        -0x10t
        -0x58t
        -0x1ft
        -0x71t
        -0x58t
        -0x1at
        -0x2ct
        -0x6t
        -0x18t
        -0x7bt
        -0x1at
        -0x1ct
        0x5t
        -0x22t
        -0x2et
        0x7dt
        -0x1t
        -0x11t
        0x2bt
        0x37t
        -0x53t
        0x40t
        0x1ft
        -0x1dt
        -0x75t
        0x35t
        0x73t
        -0xdt
        0x43t
        -0x29t
        0x37t
        -0x3dt
        0x33t
        0x75t
        -0x9t
        -0x6at
        0x6et
        -0x6dt
        0x7dt
        -0x31t
        0x48t
        0x1ft
        -0x50t
        0x48t
        0x2bt
        0x2at
        0x23t
        0x36t
        0x48t
        -0x37t
        0x2bt
        0x3ct
        0x9t
        -0x9t
        -0x9t
        0x73t
        -0x55t
        0x59t
        -0x51t
        -0x18t
        0x23t
        0x54t
        -0x57t
        -0x5dt
        0x3bt
        -0xct
        0x3at
        0x1et
        -0x17t
        -0x70t
        -0x1et
        0x48t
        0x34t
        -0x3ct
        -0x7t
        -0x12t
        -0x22t
        -0x10t
        0x65t
        0x42t
        0x5dt
        -0x6et
        -0x45t
        -0x2at
        0x18t
        -0x67t
        -0x72t
        -0x52t
        -0x1ft
        0x16t
        -0x4t
        0x72t
        -0x74t
        -0x19t
        0x16t
        -0x3t
        -0x47t
        -0x5at
        0x57t
        -0x59t
        0x5t
        -0x41t
        0x22t
        -0x54t
        -0x21t
        -0x3bt
        0x1et
        0x77t
        0x72t
        -0x1t
        0x24t
        0x68t
        0x7bt
        -0x11t
        0x19t
        -0x7t
        -0x24t
        0x6bt
        0x55t
        0xet
        -0x4t
        -0x74t
        0x56t
        -0x5dt
        -0x69t
        0x69t
        -0x18t
        -0x79t
        -0x27t
        0x7ft
        0x50t
        0x4bt
        0x7t
        0x8t
        -0x2at
        -0x3ft
        -0x74t
        0x38t
        -0x2t
        0x0t
        0x0t
        0x0t
        -0x10t
        0x1t
        0x0t
        0x0t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x14t
        0x0t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        -0x22t
        -0x59t
        0x35t
        0x30t
        -0x7dt
        0x0t
        0x0t
        0x0t
        -0x74t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x4dt
        0x41t
        0x4et
        0x49t
        0x46t
        0x45t
        0x53t
        0x54t
        0x2et
        0x4dt
        0x46t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x14t
        0x0t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        0x17t
        0x12t
        -0x2et
        0x4bt
        -0x2et
        0x0t
        0x0t
        0x0t
        0x5t
        0x1t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x3bt
        0x0t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x41t
        0x4et
        0x44t
        0x52t
        0x4ft
        0x49t
        0x44t
        0x5ft
        0x2et
        0x53t
        0x46t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x14t
        0x0t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x68t
        0x4et
        0x7t
        0x47t
        0x55t
        -0x7at
        0x4t
        -0x38t
        0x5dt
        0x2t
        0x0t
        0x0t
        0x55t
        0x3t
        0x0t
        0x0t
        0x15t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x27t
        0x1t
        0x0t
        0x0t
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x41t
        0x4et
        0x44t
        0x52t
        0x4ft
        0x49t
        0x44t
        0x5ft
        0x2et
        0x52t
        0x53t
        0x41t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x14t
        0x0t
        0x14t
        0x0t
        0x8t
        0x8t
        0x8t
        0x0t
        -0x19t
        -0x7bt
        0x6t
        0x47t
        -0x2at
        -0x3ft
        -0x74t
        0x38t
        -0x2t
        0x0t
        0x0t
        0x0t
        -0x10t
        0x1t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x79t
        0x4t
        0x0t
        0x0t
        0x41t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x4dt
        0x61t
        0x6et
        0x69t
        0x66t
        0x65t
        0x73t
        0x74t
        0x2et
        0x78t
        0x6dt
        0x6ct
        0x50t
        0x4bt
        0x5t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x4t
        0x0t
        0x8t
        0x1t
        0x0t
        0x0t
        -0x48t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static final a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/b$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/b$a;->a([Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    .line 130
    :cond_0
    if-eqz v3, :cond_1

    if-nez p0, :cond_3

    :cond_1
    const-string/jumbo v2, "SignatureVerifier"

    const-string/jumbo v3, "Sign.equals: s1 == null || s2 == null"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    .line 131
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.equals(appPublicKeys, archiveKeys) == false"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v3

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_5

    aget-object v6, p0, v2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 140
    goto :goto_0
.end method
