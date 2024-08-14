/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2023 Intel Corporation, Santa Clara, California, USA.         *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
* Intel does not recommend, suggest or require that this reference design     *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/
#ifndef __ALT_TLS_H__
#define __ALT_TLS_H__

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

/*
 * alt_init_tls_block() is called to prepare a new threads thread-local storage.
 */
void alt_init_tls_block(void *tls_block_ptr);

/*
 * alt_set_thread_pointer() is called to set the thread pointer to a specific
 * thread local storage block.  Useful when switching tasks.
 */
void alt_set_thread_pointer(void *tls_block_ptr);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __ALT_TLS_H__ */
