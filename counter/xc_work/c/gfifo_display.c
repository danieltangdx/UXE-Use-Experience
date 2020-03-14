#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(__linux)
#include <inttypes.h>
#else
#include <sys/types.h>
#endif

#ifdef __cplusplus /* If this is a C++ compiler, use C linkage */
extern "C" {
#endif

/**************** extern declarations ******************************************/
typedef unsigned long long ullong;
extern ullong        gfifoDisplaySimTime(void);
extern ullong        gfifoDisplaySimLtime(int unit, int mprec);
extern unsigned      gfifoDisplaySimStime(int unit, int mprec);
extern double        gfifoDisplaySimRtime(int unit, int mprec);
extern char*         gfifo_obf_scope_name(void);
extern int           xctf_printf(const char *str);
extern void          xctf_fwrite(unsigned fd, int len, char *ndata);
extern void          xctf_fwrite_u(unsigned fd, int len, char *ndata);
extern unsigned      xctf_getFd(char *fdName);

extern void gfifoDisplayBufferInit(char *buf);
extern int  gfifoDisplayGetBufferLen(char *buf);
extern void gfifoDisplayString(char* dest, char *str);
extern void gfifoDisplayRealTime(double realt, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toBVStr(unsigned char uchr, char* obuffer);
extern void gfifoDisplayChar8toBinStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toOctStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toHexStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toDecStr(unsigned char uchr, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayChar8toString(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toBVStr(unsigned short ushr, char* obuffer);
extern void gfifoDisplayShort16toBinStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toOctStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toHexStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toDecStr(unsigned short ushr, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayShort16toString(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toBVStr(unsigned uint,  char* obuffer);
extern void gfifoDisplayInt32toBinStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toOctStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toHexStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toDecStr(unsigned uint, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayInt32toString(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toBVStr(ullong uint64, char* obuffer);
extern void gfifoDisplayInt64toBinStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toOctStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toHexStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toDecStr(ullong uint64, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayInt64toString(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoBVStr(char* ibinstr, int nBits,  char* obuffer);
extern void gfifoDisplayBitstrtoBinStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoOctStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoHexStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoDecStr(char* ibinstr, int nBits, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayBitstrtoString(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoBVStr(uint32_t *bvec, int nBits,  char* obuffer);
extern void gfifoDisplayBVtoBinStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoOctStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoHexStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoDecStr(uint32_t *bvec, int nBits, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayBVtoString(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayRealtoTime(double realt, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayInt32toTime(unsigned uint, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayInt64toTime(ullong uint64, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayChar8toTime(unsigned char uchr, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayShort16toTime(unsigned short ushr, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayBVtoTime(uint32_t *bvec, int nBits, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayBitstrtoTime(char* ibinstr, int nBits, unsigned minWidth, int munit, char* obuffer);
/*******************************************************************************/



#ifdef __cplusplus /* If this is a C++ compiler, end C linkage */
}
#endif
