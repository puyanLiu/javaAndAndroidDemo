.class public Lcom/uc/webview/export/internal/utility/Dec7zUtil;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method private static a([[BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 157
    .line 159
    :try_start_0
    const-string/jumbo v1, "sdk_7z_f"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    :try_start_4
    aget-object v3, p0, v0

    .line 171
    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_1
    const-string/jumbo v0, "sdk_7z_fs"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 177
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 181
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 192
    :cond_2
    :goto_4
    return-void

    .line 175
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_3

    .line 179
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 181
    :cond_3
    :goto_6
    if-eqz v0, :cond_2

    .line 186
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 188
    :catch_1
    move-exception v0

    goto :goto_4

    .line 177
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_7
    if-eqz v2, :cond_4

    .line 179
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 181
    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    .line 186
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 188
    :cond_5
    :goto_9
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    .line 177
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 175
    :catch_9
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_5
.end method

.method public static dec(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "sdk_7z"

    :try_start_0
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 94
    :goto_0
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->dec7z(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    const-string/jumbo v1, "sdk_7z_s"

    :try_start_1
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 103
    :cond_0
    :goto_1
    return v0

    .line 97
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 98
    const-string/jumbo v1, "sdk_7z_e1"

    :try_start_2
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 100
    const-string/jumbo v1, "sdk_7z_e2"

    :try_start_3
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 101
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 102
    const-string/jumbo v1, "sdk_7z_e3"

    :try_start_4
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0

    .line 96
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static native dec7z(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static loadDec7zLibrary(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->b:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    const-string/jumbo v0, "so_ucsdk"

    invoke-static {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/libDec7z.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const/16 v1, 0x8

    new-array v1, v1, [[B

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$a;->a()[B

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$b;->a()[B

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$c;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$d;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$e;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$f;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$g;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Lcom/uc/webview/export/internal/utility/Dec7zUtil$h;->a()[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    sget-object v2, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->a:Ljava/lang/String;

    const-string/jumbo v3, "libDec7z.so"

    invoke-static {v1, v2, v3}, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->a([[BLjava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string/jumbo v1, "sdk_7z_l"

    :try_start_1
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_2
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "sdk_7z_ls"

    :try_start_2
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_3
    sput-boolean v4, Lcom/uc/webview/export/internal/utility/Dec7zUtil;->b:Z

    goto/16 :goto_0

    .line 53
    :catch_0
    move-exception v0

    const-string/jumbo v0, "so_ucsdk"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method
