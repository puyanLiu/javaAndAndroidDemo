.class final Lcom/alipay/mobile/socialsdk/chat/util/c;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    .line 810
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 811
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/util/c;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/c;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    goto :goto_0
.end method
