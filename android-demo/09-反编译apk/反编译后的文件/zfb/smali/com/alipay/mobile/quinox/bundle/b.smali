.class public Lcom/alipay/mobile/quinox/bundle/b;
.super Ljava/lang/Object;
.source "BundleCfgUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/quinox/bundle/b;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static a(Ljava/io/BufferedInputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    .line 170
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/d;

    invoke-direct {v2, p1, v1}, Lcom/alipay/mobile/quinox/bundle/d;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p0, v0, v0, v2}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/BufferedInputStream;Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    .line 149
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/c;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v0, v0, v2}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/io/BufferedInputStream;Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V
    .locals 4

    .prologue
    .line 86
    if-eqz p0, :cond_5

    .line 87
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 94
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz p1, :cond_2

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_2
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    .line 101
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    .line 102
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/bundle/a;-><init>()V

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 104
    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    iget-object v3, v2, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    if-eqz p3, :cond_4

    .line 109
    invoke-interface {p3, v2}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 110
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/b;->a:Lcom/alipay/mobile/quinox/bundle/b;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/alipay/mobile/quinox/bundle/b;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/b;->a:Lcom/alipay/mobile/quinox/bundle/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/b;->a:Lcom/alipay/mobile/quinox/bundle/b;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V
    .locals 4

    .prologue
    .line 54
    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/alipay/mobile/quinox/bundle/b;->a:Lcom/alipay/mobile/quinox/bundle/b;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "bundles.cfg"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    invoke-static {v1, p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/BufferedInputStream;Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 61
    :goto_1
    :try_start_2
    const-string/jumbo v2, "BundleCfgUtil"

    invoke-static {v2, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 65
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 68
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    :goto_3
    :try_start_3
    const-string/jumbo v1, "BundleCfgUtil"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 74
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 69
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 60
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static a([Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 118
    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/alipay/mobile/quinox/bundle/b;->a:Lcom/alipay/mobile/quinox/bundle/b;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "bundles.cfg"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 123
    :cond_0
    const/4 v2, 0x0

    .line 125
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-static {v1, p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 129
    invoke-static {v1, v4}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 130
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 131
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/quinox/bundle/a;

    .line 130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_2
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 144
    :goto_1
    return-void

    .line 135
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 136
    :goto_2
    :try_start_2
    const-string/jumbo v2, "BundleCfgUtil"

    invoke-static {v2, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 138
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 139
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 140
    :goto_4
    :try_start_3
    const-string/jumbo v2, "BundleCfgUtil"

    invoke-static {v2, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 139
    :catch_2
    move-exception v0

    goto :goto_4

    .line 135
    :catch_3
    move-exception v0

    goto :goto_2
.end method
