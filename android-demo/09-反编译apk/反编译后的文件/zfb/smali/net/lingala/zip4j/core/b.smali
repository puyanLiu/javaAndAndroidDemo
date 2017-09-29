.class public final Lnet/lingala/zip4j/core/b;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lnet/lingala/zip4j/model/l;

.field private d:Lnet/lingala/zip4j/progress/a;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lnet/lingala/zip4j/core/b;->b:I

    .line 89
    new-instance v0, Lnet/lingala/zip4j/progress/a;

    invoke-direct {v0}, Lnet/lingala/zip4j/progress/a;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/b;->d:Lnet/lingala/zip4j/progress/a;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/core/b;->e:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/b;-><init>(Ljava/io/File;)V

    .line 73
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    iget v0, p0, Lnet/lingala/zip4j/core/b;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 415
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "Invalid mode"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_2
    const/4 v2, 0x0

    .line 420
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "r"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    :try_start_1
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-nez v0, :cond_3

    .line 424
    new-instance v0, Lnet/lingala/zip4j/core/a;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/core/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 425
    iget-object v2, p0, Lnet/lingala/zip4j/core/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/lang/String;)Lnet/lingala/zip4j/model/l;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    .line 426
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    iget-object v2, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/l;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 438
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 431
    :goto_1
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 435
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 438
    :cond_4
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 433
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 430
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Lnet/lingala/zip4j/core/b;->b()V

    .line 689
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x0

    .line 692
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lnet/lingala/zip4j/model/f;)Lnet/lingala/zip4j/io/d;
    .locals 2

    .prologue
    .line 979
    if-nez p1, :cond_0

    .line 980
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "FileHeader is null, cannot get InputStream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnet/lingala/zip4j/core/b;->b()V

    .line 985
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-nez v0, :cond_3

    .line 986
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "zip model is null, cannot get inputstream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    iget-object v1, p0, Lnet/lingala/zip4j/core/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    iget-object v1, p0, Lnet/lingala/zip4j/core/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/unzip/a;

    iget-object v1, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/a;-><init>(Lnet/lingala/zip4j/model/l;)V

    .line 990
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/unzip/a;->a(Lnet/lingala/zip4j/model/f;)Lnet/lingala/zip4j/io/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lnet/lingala/zip4j/model/f;
    .locals 4

    .prologue
    .line 703
    invoke-static {p1}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/core/b;->b()V

    .line 708
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    if-nez v0, :cond_3

    .line 709
    :cond_1
    const/4 v0, 0x0

    .line 712
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    if-nez v1, :cond_4

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zip model is null, cannot determine file header for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p1}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file name is null, cannot determine file header for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/c;->a(Lnet/lingala/zip4j/model/l;Ljava/lang/String;)Lnet/lingala/zip4j/model/f;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\\\\"

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/c;->a(Lnet/lingala/zip4j/model/l;Ljava/lang/String;)Lnet/lingala/zip4j/model/f;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "/"

    const-string/jumbo v3, "\\\\"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/c;->a(Lnet/lingala/zip4j/model/l;Ljava/lang/String;)Lnet/lingala/zip4j/model/f;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "input file header is null, cannot extract file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    invoke-static {p2}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "destination path is empty or null, cannot extract file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/core/b;->b()V

    .line 542
    iget-object v0, p0, Lnet/lingala/zip4j/core/b;->d:Lnet/lingala/zip4j/progress/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 543
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/core/b;->c:Lnet/lingala/zip4j/model/l;

    iget-object v4, p0, Lnet/lingala/zip4j/core/b;->d:Lnet/lingala/zip4j/progress/a;

    iget-boolean v5, p0, Lnet/lingala/zip4j/core/b;->e:Z

    if-nez v1, :cond_3

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "input zipModel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2}, Lnet/lingala/zip4j/util/c;->b(Ljava/lang/String;)Z

    if-nez p1, :cond_4

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lnet/lingala/zip4j/unzip/a;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/a;-><init>(Lnet/lingala/zip4j/model/l;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/a;->a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;Z)V

    .line 548
    return-void
.end method
