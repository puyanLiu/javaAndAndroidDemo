.class public final Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/File;

.field private final e:[Ljava/io/InputStream;

.field private final f:[J


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    .line 646
    iput-wide p3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->c:J

    .line 647
    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->d:[Ljava/io/File;

    .line 648
    iput-object p6, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->e:[Ljava/io/InputStream;

    .line 649
    iput-object p7, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->f:[J

    .line 650
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JB)V
    .locals 0

    .prologue
    .line 643
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 681
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->e:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 684
    return-void

    .line 681
    :cond_0
    aget-object v3, v1, v0

    .line 682
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final edit()Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    .locals 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final getFile(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getInputStream(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->e:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLength(I)J
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->f:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
