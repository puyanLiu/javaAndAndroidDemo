.class public Lorg/jacoco/core/data/ExecutionDataReader;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jacoco/core/data/ISessionInfoVisitor;

.field private b:Lorg/jacoco/core/data/IExecutionDataVisitor;

.field private c:Z

.field protected final in:Lorg/jacoco/core/internal/data/CompactDataInput;

.field public recordIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->a:Lorg/jacoco/core/data/ISessionInfoVisitor;

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->b:Lorg/jacoco/core/data/IExecutionDataVisitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->recordIds:Ljava/util/List;

    new-instance v0, Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-direct {v0, p1}, Lorg/jacoco/core/internal/data/CompactDataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    return-void
.end method


# virtual methods
.method public read()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v2}, Lorg/jacoco/core/internal/data/CompactDataInput;->readByte()B

    move-result v2

    iget-boolean v3, p0, Lorg/jacoco/core/data/ExecutionDataReader;->c:Z

    if-eqz v3, :cond_1

    if-eq v2, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid execution data file."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jacoco/core/data/ExecutionDataReader;->c:Z

    invoke-virtual {p0, v2}, Lorg/jacoco/core/data/ExecutionDataReader;->readBlock(B)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method protected readBlock(B)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unknown block type %x."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readChar()C

    move-result v0

    const v1, 0xc0c0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid execution data file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readChar()C

    move-result v0

    const/16 v1, 0x1006

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Incompatible version %x."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->a:Lorg/jacoco/core/data/ISessionInfoVisitor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No session info visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v2

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v4

    iget-object v6, p0, Lorg/jacoco/core/data/ExecutionDataReader;->a:Lorg/jacoco/core/data/ISessionInfoVisitor;

    new-instance v0, Lorg/jacoco/core/data/SessionInfo;

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/core/data/SessionInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Lorg/jacoco/core/data/ISessionInfoVisitor;->visitSessionInfo(Lorg/jacoco/core/data/SessionInfo;)V

    :cond_2
    :goto_0
    return v7

    :sswitch_2
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->b:Lorg/jacoco/core/data/IExecutionDataVisitor;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No execution data visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const-string/jumbo v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/core/data/ExecutionDataReader;->recordIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/jacoco/core/data/ExecutionDataReader;->recordIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionDataReader;->in:Lorg/jacoco/core/internal/data/CompactDataInput;

    invoke-virtual {v3}, Lorg/jacoco/core/internal/data/CompactDataInput;->readBooleanArray()[Z

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/core/data/ExecutionDataReader;->b:Lorg/jacoco/core/data/IExecutionDataVisitor;

    new-instance v5, Lorg/jacoco/core/data/ExecutionData;

    invoke-direct {v5, v1, v2, v0, v3}, Lorg/jacoco/core/data/ExecutionData;-><init>(JLjava/lang/String;[Z)V

    invoke-interface {v4, v5}, Lorg/jacoco/core/data/IExecutionDataVisitor;->visitClassExecution(Lorg/jacoco/core/data/ExecutionData;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExecutionDataVisitor(Lorg/jacoco/core/data/IExecutionDataVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/data/ExecutionDataReader;->b:Lorg/jacoco/core/data/IExecutionDataVisitor;

    return-void
.end method

.method public setSessionInfoVisitor(Lorg/jacoco/core/data/ISessionInfoVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/data/ExecutionDataReader;->a:Lorg/jacoco/core/data/ISessionInfoVisitor;

    return-void
.end method
