.class public Lcom/alibaba/motu/CrashCombineUtils;
.super Ljava/lang/Object;
.source "CrashCombineUtils.java"


# static fields
.field public static final DEFAULT_MAX_INFO_LEN:I = 0x100000

.field public static final TOMB:Ljava/lang/String; = "tomb_"

.field private static final comparator:Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;

.field public static crashTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/motu/CrashCombineUtils;->crashTime:J

    .line 101
    new-instance v0, Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;

    invoke-direct {v0}, Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;-><init>()V

    sput-object v0, Lcom/alibaba/motu/CrashCombineUtils;->comparator:Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    if-eqz p0, :cond_1

    .line 106
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/alibaba/motu/CrashCombineUtils;->readFile(Ljava/io/File;I)[B

    move-result-object v0

    .line 112
    if-eqz p1, :cond_0

    const-string/jumbo v2, "java:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    const-string/jumbo v3, "java:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 118
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " org: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    array-length v1, v0

    if-lez v1, :cond_1

    .line 128
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    .line 141
    :cond_1
    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getCrashTime()J
    .locals 2

    .prologue
    .line 91
    sget-wide v0, Lcom/alibaba/motu/CrashCombineUtils;->crashTime:J

    return-wide v0
.end method

.method public static getFullTimeString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v3

    .line 37
    :cond_1
    const-string/jumbo v1, "nativecrash"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    array-length v5, v2

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    .line 45
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_2
    sget-object v1, Lcom/alibaba/motu/CrashCombineUtils;->comparator:Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v0

    move-object v1, v3

    .line 50
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 51
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 52
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tomb_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 50
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 60
    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    .line 61
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tomb_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :cond_5
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alibaba/motu/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/CrashCombineUtils;->recordCrashTime(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public static readFile(Ljava/io/File;I)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 145
    if-gtz p1, :cond_0

    .line 146
    const/high16 p1, 0x100000

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 148
    if-le v0, p1, :cond_2

    .line 149
    :goto_0
    new-array v0, p1, [B

    .line 150
    const/4 v1, 0x0

    .line 152
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v1, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 154
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 155
    if-lez v3, :cond_3

    if-ge v3, p1, :cond_3

    .line 156
    new-array v1, v3, [B

    .line 157
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 170
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move p1, v0

    .line 148
    goto :goto_0

    .line 159
    :cond_3
    if-eq v3, p1, :cond_1

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    :goto_2
    new-array v0, v6, [B

    .line 164
    if-eqz v1, :cond_1

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 163
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static recordCrashTime(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/motu/CrashCombineUtils;->crashTime:J

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/motu/CrashCombineUtils;->crashTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
