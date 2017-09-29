.class public Lorg/jacoco/core/instr/Instrumenter;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

.field private final b:Lorg/jacoco/core/internal/instr/SignatureRemover;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/instr/Instrumenter;->a:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    new-instance v0, Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-direct {v0}, Lorg/jacoco/core/internal/instr/SignatureRemover;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/instr/Instrumenter;->b:Lorg/jacoco/core/internal/instr/SignatureRemover;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;
    .locals 4

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Error while instrumenting class %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Lorg/objectweb/asm/ClassReader;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {p3, v0}, Lorg/jacoco/core/instr/Instrumenter;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public instrument(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Lorg/objectweb/asm/ClassReader;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p2, v0}, Lorg/jacoco/core/instr/Instrumenter;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public instrument(Lorg/objectweb/asm/ClassReader;)[B
    .locals 4

    new-instance v0, Lorg/objectweb/asm/ClassWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/ClassWriter;-><init>(Lorg/objectweb/asm/ClassReader;I)V

    iget-object v1, p0, Lorg/jacoco/core/instr/Instrumenter;->a:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    invoke-static {p1, v1}, Lorg/jacoco/core/internal/instr/ProbeArrayStrategyFactory;->createFor(Lorg/objectweb/asm/ClassReader;Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    move-result-object v1

    new-instance v2, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    new-instance v3, Lorg/jacoco/core/internal/instr/ClassInstrumenter;

    invoke-direct {v3, v1, v0}, Lorg/jacoco/core/internal/instr/ClassInstrumenter;-><init>(Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;Lorg/objectweb/asm/ClassVisitor;)V

    const/4 v1, 0x1

    invoke-direct {v2, v3, v1}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/core/internal/flow/ClassProbesVisitor;Z)V

    const/16 v1, 0x8

    invoke-virtual {p1, v2, v1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {v0}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public instrument([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Lorg/objectweb/asm/ClassReader;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p2, v0}, Lorg/jacoco/core/instr/Instrumenter;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lorg/jacoco/core/internal/ContentTypeDetector;

    invoke-direct {v1, p1}, Lorg/jacoco/core/internal/ContentTypeDetector;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/jacoco/core/instr/Instrumenter;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/core/instr/Instrumenter;->b:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v4, v3}, Lorg/jacoco/core/internal/instr/SignatureRemover;->removeEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v4, p0, Lorg/jacoco/core/instr/Instrumenter;->b:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v4, v3, v2, v1}, Lorg/jacoco/core/internal/instr/SignatureRemover;->filterEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2, v1, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/jacoco/core/internal/Pack200Streams;->unpack(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p2}, Lorg/jacoco/core/internal/Pack200Streams;->pack([BLjava/io/OutputStream;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35014542 -> :sswitch_0
        -0x35012ff3 -> :sswitch_3
        0x1f8b0000 -> :sswitch_2
        0x504b0304 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRemoveSignatures(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/instr/Instrumenter;->b:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/instr/SignatureRemover;->setActive(Z)V

    return-void
.end method
