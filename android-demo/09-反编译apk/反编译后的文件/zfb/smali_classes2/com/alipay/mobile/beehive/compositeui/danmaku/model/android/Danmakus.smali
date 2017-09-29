.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;


# static fields
.field public static final ST_BY_LIST:I = 0x4

.field public static final ST_BY_TIME:I = 0x0

.field public static final ST_BY_YPOS:I = 0x1

.field public static final ST_BY_YPOS_DESC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Danmaku"


# instance fields
.field private endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field private endSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field public items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

.field private mComparator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;

.field private mDuplicateMergingEnabled:Z

.field private mSize:I

.field private mSortType:I

.field private startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field private startSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field private subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 62
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    .line 77
    const/4 v0, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$TimeComparator;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$TimeComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    .line 85
    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 93
    :goto_1
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    .line 94
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 95
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    .line 96
    return-void

    .line 80
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 81
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosComparator;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 83
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosDescComparator;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosDescComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    goto :goto_0

    .line 88
    :cond_3
    iput-boolean p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 89
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 90
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 91
    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mComparator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    .line 99
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    return v0
.end method

.method private createItem(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Danmaku;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Danmaku;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setDuplicateMergingEnabled(Z)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mComparator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 390
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 391
    return-void
.end method

.method private subset(JJ)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_3

    .line 169
    const-string/jumbo v0, "start"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_4

    .line 172
    const-string/jumbo v0, "end"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-wide p1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-wide p3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endSubItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->clear()V

    .line 235
    :cond_1
    return-void
.end method

.method public contains(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public first()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 245
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->reset()V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    return-object v0
.end method

.method public last()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 256
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->setVisibility(Z)V

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 107
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    if-eq v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 115
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 116
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    .line 118
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    .line 124
    :goto_2
    return-void

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->setDatas(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public setSubItemsDuplicateMergingEnabled(Z)V
    .locals 1

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->setDuplicateMergingEnabled(Z)V

    .line 401
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSize:I

    return v0
.end method

.method public sub(JJ)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 4

    .prologue
    .line 192
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_3

    .line 199
    const-string/jumbo v0, "start"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_4

    .line 202
    const-string/jumbo v0, "end"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v0

    .line 207
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    goto :goto_0

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-wide p1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-wide p3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->startItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->endItem:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    invoke-interface {v0, v2, v3}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subItems:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    goto :goto_0
.end method

.method public subnew(JJ)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->subset(JJ)Ljava/util/Collection;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 186
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 187
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
