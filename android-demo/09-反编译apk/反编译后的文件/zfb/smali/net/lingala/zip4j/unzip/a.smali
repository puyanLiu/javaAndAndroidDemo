.class public final Lnet/lingala/zip4j/unzip/a;
.super Ljava/lang/Object;
.source "Unzip.java"


# instance fields
.field private a:Lnet/lingala/zip4j/model/l;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/l;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "ZipModel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/a;->a:Lnet/lingala/zip4j/model/l;

    .line 43
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Lnet/lingala/zip4j/model/h;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V
    .locals 2

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "fileHeader is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lnet/lingala/zip4j/util/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/util/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 139
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->k()Z
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 164
    :cond_2
    :goto_0
    return-void

    .line 145
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_2
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/Throwable;)V

    .line 152
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :catch_1
    move-exception v0

    .line 167
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/Throwable;)V

    .line 168
    throw v0

    .line 156
    :cond_4
    if-eqz p1, :cond_5

    :try_start_3
    invoke-static {p2}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    :catch_2
    move-exception v0

    .line 170
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/Throwable;)V

    .line 171
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p4

    :cond_7
    invoke-static {v0}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_5 .. :try_end_5} :catch_1

    .line 158
    :cond_8
    :try_start_6
    new-instance v0, Lnet/lingala/zip4j/unzip/c;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/a;->a:Lnet/lingala/zip4j/model/l;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/c;-><init>(Lnet/lingala/zip4j/model/l;Lnet/lingala/zip4j/model/f;)V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 160
    :try_start_7
    invoke-virtual {v0, p5, p2, p4, p3}, Lnet/lingala/zip4j/unzip/c;->a(Lnet/lingala/zip4j/progress/a;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/h;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 161
    :catch_3
    move-exception v0

    .line 162
    :try_start_8
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/Throwable;)V

    .line 163
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :catch_4
    move-exception v0

    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
.end method

.method static synthetic a(Lnet/lingala/zip4j/unzip/a;Lnet/lingala/zip4j/model/f;Ljava/lang/String;Lnet/lingala/zip4j/model/h;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/a;->a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Lnet/lingala/zip4j/model/h;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lnet/lingala/zip4j/model/f;)Lnet/lingala/zip4j/io/d;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lnet/lingala/zip4j/unzip/c;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/a;->a:Lnet/lingala/zip4j/model/l;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/c;-><init>(Lnet/lingala/zip4j/model/l;Lnet/lingala/zip4j/model/f;)V

    .line 177
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/c;->a()Lnet/lingala/zip4j/io/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;Z)V
    .locals 7

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "fileHeader is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p4}, Lnet/lingala/zip4j/progress/a;->d()V

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->d()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lnet/lingala/zip4j/progress/a;->a(J)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lnet/lingala/zip4j/progress/a;->a(I)V

    .line 102
    invoke-virtual {p4}, Lnet/lingala/zip4j/progress/a;->b()V

    .line 103
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lnet/lingala/zip4j/progress/a;->a(Ljava/lang/String;)V

    .line 105
    if-eqz p5, :cond_1

    .line 106
    new-instance v0, Lnet/lingala/zip4j/unzip/b;

    const-string/jumbo v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/unzip/b;-><init>(Lnet/lingala/zip4j/unzip/a;Ljava/lang/String;Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/a;->a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Lnet/lingala/zip4j/model/h;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V

    .line 118
    invoke-virtual {p4}, Lnet/lingala/zip4j/progress/a;->e()V

    goto :goto_0
.end method
