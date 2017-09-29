.class public final Lcom/alipay/mobile/quinox/bundle/a;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:[Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:[Ljava/lang/String;

.field m:[Ljava/lang/String;

.field n:Ljava/util/Set;

.field o:Z

.field private p:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    .line 105
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    .line 105
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "META-INF/BUNDLE.MF"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 177
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t find META-INF/BUNDLE.MF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/util/jar/Manifest;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    .line 184
    const-string/jumbo v0, "Bundle-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "Bundle-Version"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "Init-Level"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    .line 193
    const-string/jumbo v0, "Package-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    .line 198
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const-string/jumbo v4, "Activity-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_2
    const-string/jumbo v4, "Service-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 205
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_3
    const-string/jumbo v4, "Receiver-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 209
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_4
    const-string/jumbo v4, "Provider-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 213
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:[Ljava/lang/String;

    .line 219
    :cond_6
    const-string/jumbo v0, "Package-Id"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "Contains-Dex"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:Z

    .line 224
    const-string/jumbo v0, "Contains-Res"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    .line 227
    const-string/jumbo v0, "Native-Library"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 229
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    .line 232
    :cond_7
    const-string/jumbo v0, "Require-Bundle"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 234
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->a([Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    .line 237
    :cond_8
    const-string/jumbo v0, "Export-Package"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 239
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    .line 242
    :cond_9
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 244
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string/jumbo v1, "Bundle"

    const-string/jumbo v2, "close ZipFile: Exception occur."

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    .line 422
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 424
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 425
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 426
    const/4 v6, -0x1

    if-ne v6, v5, :cond_0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has a wrong format depend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_2
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 331
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-object p0

    .line 333
    :catch_0
    move-exception v0

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    .line 258
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    .line 262
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:[Ljava/lang/String;

    .line 264
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:Z

    .line 266
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    .line 267
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->a([Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    .line 269
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    .line 271
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    if-lez v0, :cond_0

    .line 272
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    .line 274
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 286
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:Z

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 287
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->p:I

    if-lez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 295
    :cond_0
    return-object p0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-object p0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lcom/alipay/mobile/quinox/bundle/a;

    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    iget v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:Z

    return v0
.end method

.method public final j()Ljava/util/Set;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    return-object v0
.end method

.method public final declared-synchronized k()Z
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-object p0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    const-string/jumbo v0, "name=%s, version=%s, path=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
