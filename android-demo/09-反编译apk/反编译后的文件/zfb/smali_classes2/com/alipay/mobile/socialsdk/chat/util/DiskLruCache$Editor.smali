.class public final Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

.field private final b:Lcom/alipay/mobile/socialsdk/chat/util/d;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/d;)V
    .locals 1

    .prologue
    .line 701
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 703
    invoke-static {p2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->c:[Z

    .line 704
    return-void

    .line 703
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/d;B)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/d;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)Lcom/alipay/mobile/socialsdk/chat/util/d;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V

    .line 797
    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->e:Z

    if-nez v0, :cond_0

    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 782
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->d:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V

    .line 784
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c(Ljava/lang/String;)Z

    .line 788
    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->e:Z

    .line 789
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 711
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    monitor-enter v2

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 715
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :goto_0
    return-object v0

    .line 719
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 721
    :catch_0
    move-exception v1

    monitor-exit v2

    goto :goto_0
.end method

.method public final newOutputStream(I)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 741
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    monitor-enter v2

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 745
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b:Lcom/alipay/mobile/socialsdk/chat/util/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 751
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 762
    :goto_0
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/alipay/mobile/socialsdk/chat/util/c;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 754
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 756
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 759
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final set(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 768
    const/4 v2, 0x0

    .line 770
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/util/h;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 773
    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V

    .line 775
    return-void

    .line 772
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 773
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V

    .line 774
    throw v0

    .line 772
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
