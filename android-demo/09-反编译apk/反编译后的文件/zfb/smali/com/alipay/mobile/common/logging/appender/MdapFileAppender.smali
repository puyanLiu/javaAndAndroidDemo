.class public Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/FileAppender;
.source "MdapFileAppender.java"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mdap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/FileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 19
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:Z

    .line 20
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Z

    .line 23
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Z

    .line 33
    return-void
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "dev"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:Z

    if-eqz v0, :cond_0

    .line 39
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:Z

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "\\$\\$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;)Z

    .line 64
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 66
    iput v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    .line 69
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e()V

    .line 71
    iput v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    .line 73
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c()V

    .line 141
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    if-lez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Mdap Appender flush\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;)Z

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 148
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    .line 149
    iput v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:I

    .line 151
    :cond_1
    return-void
.end method

.method protected final d()Ljava/io/File;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mdap"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Ljava/io/File;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Ljava/io/File;

    .line 98
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->d()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e()V
    .locals 6

    .prologue
    .line 120
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    if-lez v0, :cond_3

    .line 124
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/io/File;Ljava/io/File;)V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/io/File;Ljava/io/File;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:I

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_3
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
