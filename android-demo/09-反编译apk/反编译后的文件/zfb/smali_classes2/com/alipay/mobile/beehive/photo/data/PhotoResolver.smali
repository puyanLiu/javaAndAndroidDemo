.class public Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;
.super Ljava/lang/Object;
.source "PhotoResolver.java"


# static fields
.field private static final INIT_ADD:I = 0x32

.field public static final TAG:Ljava/lang/String; = "PhotoResolver"


# instance fields
.field private bucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/BucketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

.field private bucketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private bucketSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/photo/data/BucketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private enableGif:Z

.field private minPhotoSize:I

.field private photoCount:I

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Landroid/content/ContentResolver;

.field private selectedPhotoPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textAllBucket:Ljava/lang/String;

.field private videoCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->resolver:Landroid/content/ContentResolver;

    .line 84
    const/16 v0, 0x2800

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->minPhotoSize:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->enableGif:Z

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Z)Z
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->notifyScanFinished()V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initBucket()V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addBoth(Landroid/database/Cursor;Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->dataRemain(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->videoCount:I

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoCount:I

    return v0
.end method

.method private addBoth(Landroid/database/Cursor;Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 10

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object p1, v0

    .line 221
    :goto_0
    return-object p1

    .line 186
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    const-string/jumbo v3, "date_added"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 192
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    mul-long/2addr v3, v6

    .line 198
    :goto_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 203
    const-string/jumbo v1, "date_added"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 204
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    mul-long/2addr v1, v6

    .line 210
    :goto_2
    cmp-long v5, v3, v8

    if-gez v5, :cond_5

    cmp-long v5, v1, v8

    if-gez v5, :cond_5

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "mediaScan"

    const-string/jumbo v3, "both cursor no more data!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 212
    goto :goto_0

    .line 196
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "mediaScan"

    const-string/jumbo v5, "videoCursor no more data!"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    goto :goto_1

    .line 208
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "mediaScan"

    const-string/jumbo v7, "imgCursor no more data!"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_5
    cmp-long v0, v3, v1

    if-ltz v0, :cond_6

    .line 216
    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addVideo(Landroid/database/Cursor;Z)Z

    goto :goto_0

    .line 220
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Landroid/database/Cursor;Z)Z

    move-object p1, p2

    .line 221
    goto :goto_0
.end method

.method private addPhoto(Landroid/database/Cursor;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 465
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoCount:I

    .line 466
    const-string/jumbo v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 467
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->minPhotoSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 471
    :cond_1
    const-string/jumbo v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 472
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string/jumbo v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 486
    iget-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->enableGif:Z

    if-nez v3, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "image/gif"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    :cond_2
    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 491
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 493
    const-string/jumbo v3, "date_modified"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 494
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 497
    const-string/jumbo v5, "orientation"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 498
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 501
    new-instance v6, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-direct {v6, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;)V

    .line 502
    iget-object v7, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 503
    iget-object v7, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 504
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 507
    :cond_3
    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoSize(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 508
    invoke-virtual {v6, v3, v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setModifiedTime(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 509
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoOrientation(I)V

    .line 511
    const-string/jumbo v0, "bucket_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 512
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-direct {p0, v6, v0, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private addPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    .line 519
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->enableGif:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoResolver"

    const-string/jumbo v3, "select gif not enabled."

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    return v1

    .line 524
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoSize()J

    move-result-wide v2

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->minPhotoSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 525
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ignore small file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketSet:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    .line 532
    if-nez v0, :cond_2

    .line 533
    new-instance v2, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    invoke-direct {v2, p2, v1, p1}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;-><init>(Ljava/lang/String;ILcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketSet:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v2

    .line 538
    :cond_2
    if-nez p3, :cond_3

    .line 539
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->setPhoto(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 543
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->increaseCount()V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 546
    if-nez v0, :cond_4

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 552
    if-eqz p3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_5
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 553
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 535
    goto :goto_1

    :cond_7
    move v2, v1

    .line 551
    goto :goto_2
.end method

.method private addVideo(Landroid/database/Cursor;Z)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 422
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->videoCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->videoCount:I

    .line 424
    const-string/jumbo v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 425
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->minPhotoSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 426
    const-string/jumbo v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 427
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 433
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 434
    const-string/jumbo v3, "date_modified"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 435
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 436
    const-string/jumbo v5, "resolution"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 437
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 438
    const-string/jumbo v6, "duration"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 439
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 441
    new-instance v8, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-direct {v8, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v8, v6, v7}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setVideoDuration(J)V

    .line 444
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setMediaType(I)V

    .line 446
    invoke-virtual {v8, v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoSize(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 447
    invoke-virtual {v8, v3, v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setModifiedTime(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 449
    invoke-virtual {v8, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setVideoResolution(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "bucket_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 452
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-direct {p0, v8, v0, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Ljava/lang/String;Z)Z

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoResolver"

    const-string/jumbo v3, "video file error,won`t add!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoResolver"

    const-string/jumbo v3, "video file size too small,won`t add!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private backgroundAdd(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoResolver"

    const-string/jumbo v2, "do add photo background"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;-><init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 291
    return-void
.end method

.method private backgroundAddBoth(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoResolver"

    const-string/jumbo v2, "do add photo background"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;-><init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    return-void
.end method

.method private dataRemain(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 331
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    if-ne p1, p2, :cond_3

    .line 339
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 342
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoResolver"

    const-string/jumbo v2, "initPhotoBucket"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketSet:Ljava/util/Map;

    .line 98
    return-void
.end method

.method private initBucket()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->allPhoto:Z

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    .line 412
    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->textAllBucket:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 412
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;-><init>(Ljava/lang/String;ILcom/alipay/mobile/beehive/service/PhotoInfo;Z)V

    .line 414
    iput-boolean v4, v1, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->allPhoto:Z

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->textAllBucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->photoList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private notifyScanFinished()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;->onScanFinished()V

    .line 76
    :cond_0
    return-void
.end method

.method private refreshCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 392
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 393
    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 394
    const-string/jumbo v5, "bucket_display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 395
    const-string/jumbo v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "_size"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "mime_type"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 396
    const-string/jumbo v5, "orientation"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "datetaken"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "date_added"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    .line 397
    const-string/jumbo v5, "date_modified"

    aput-object v5, v2, v4

    .line 398
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 391
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 399
    return-object v0
.end method

.method private refreshVideoCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 231
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 232
    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 233
    const-string/jumbo v5, "bucket_display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "resolution"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 234
    const-string/jumbo v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "_size"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 235
    const-string/jumbo v5, "mini_thumb_magic"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "duration"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    .line 236
    const-string/jumbo v5, "date_modified"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "date_added"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "datetaken"

    aput-object v5, v2, v4

    .line 237
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 238
    return-object v0
.end method


# virtual methods
.method public addPhoto(Landroid/net/Uri;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addPhoto "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-nez p1, :cond_0

    .line 387
    :goto_0
    return v0

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 367
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance v4, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 370
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 374
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoSize(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 375
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setModifiedTime(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 377
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->isPhoto(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 378
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setMediaType(I)V

    .line 381
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-direct {p0, v4, v3, v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Ljava/lang/String;Z)Z

    .line 385
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "PhotoResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addPhoto "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initBucket()V

    move v0, v1

    .line 387
    goto/16 :goto_0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/BucketInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketList:Ljava/util/List;

    return-object v0
.end method

.method public getBucketList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public initPhoto()V
    .locals 7

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->init()V

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->refreshCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoResolver"

    const-string/jumbo v2, "no photo found in user external media."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "PhotoResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initPhoto count "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 111
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addPhoto(Landroid/database/Cursor;Z)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    const/16 v4, 0x32

    if-ge v0, v4, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    .line 110
    if-nez v4, :cond_2

    .line 116
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-direct {p0, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->backgroundAdd(Landroid/database/Cursor;)V

    .line 122
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initBucket()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "init photo bucket info delta "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->notifyScanFinished()V

    goto :goto_1
.end method

.method public initPhotoAndVideo()V
    .locals 7

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->init()V

    .line 133
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->refreshCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->refreshVideoCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 137
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "PhotoResolver"

    const-string/jumbo v6, "initPhotoAndVideo() found No img!"

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "PhotoResolver"

    const-string/jumbo v6, "initPhotoAndVideo() found No video!"

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_3
    const/4 v0, 0x0

    .line 146
    :cond_4
    const/4 v5, 0x1

    invoke-direct {p0, v2, v1, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->addBoth(Landroid/database/Cursor;Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v5

    .line 147
    if-eqz v5, :cond_5

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_5
    const/16 v6, 0x32

    if-ge v0, v6, :cond_6

    invoke-direct {p0, v5, v2, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->dataRemain(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v6

    .line 144
    if-nez v6, :cond_4

    .line 153
    :cond_6
    invoke-direct {p0, v5, v2, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->dataRemain(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->backgroundAddBoth(Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initBucket()V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "init photo bucket info delta "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 156
    :cond_7
    if-eqz v1, :cond_8

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_8
    if-eqz v2, :cond_9

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->notifyScanFinished()V

    goto :goto_0
.end method

.method public setAllBucketName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->textAllBucket:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setBucketListener(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->bucketListener:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    .line 266
    return-void
.end method

.method public setEnableGif(Z)V
    .locals 0

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->enableGif:Z

    .line 570
    return-void
.end method

.method public setMinPhotoSize(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->minPhotoSize:I

    .line 90
    return-void
.end method

.method public setSelectedPhotoPaths(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->selectedPhotoPaths:Ljava/util/Set;

    .line 172
    return-void
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const-string/jumbo v0, " ASC"

    .line 260
    const-string/jumbo v1, "date_added"

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
